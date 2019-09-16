local CurrentAction = nil
local GUI = {}
GUI.Time = 0
local HasAlreadyEnteredMarker = false
local LastZone = nil
local CurrentActionMsg = ''
local CurrentActionData = {}
local times = 0
local this_Garage = {}
-- Initialisation ESX
ESX = nil
VehiclesBDD = {}
PoundVehiclesBDD = {}
VehiclesNoStoredBDD = {}

local RefreshBlips = function()
    local zones = {}
    local blipInfo = {}

    for zoneKey, zoneValues in pairs(Config.Garages) do
        local blip = AddBlipForCoord(zoneValues.Pos.x, zoneValues.Pos.y, zoneValues.Pos.z)
        SetBlipSprite(blip, Config.BlipInfos.Sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, Config.BlipInfos.Color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString("Garages")
        EndTextCommandSetBlipName(blip)
        local blip = AddBlipForCoord(zoneValues.MunicipalPoundPoint.Pos.x, zoneValues.MunicipalPoundPoint.Pos.y, zoneValues.MunicipalPoundPoint.Pos.z)
        SetBlipSprite(blip, Config.BlipPound.Sprite)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, Config.BlipPound.Color)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(_U('impound_yard'))
        EndTextCommandSetBlipName(blip)
    end
end

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end

    RefreshBlips()

    ESX.TriggerServerCallback('esx_eden_mrv_garage:getStoredVehicles', function(vehiclestored)
        VehiclesBDD = vehiclestored
    end)

    ESX.TriggerServerCallback('esx_eden_mrv_garage:getOthersVehicles', function(vehiclesnostored)
        VehiclesNoStoredBDD = vehiclesnostored
    end)

    ESX.TriggerServerCallback('esx_eden_mrv_garage:getPoundVehicles', function(vehiclespound)
        PoundVehiclesBDD = vehiclespound
    end)

    Wait(500)
    ListMenu(listmenu)
    ParkMenu(parkmenu)
    PoundMenu(poundmenu)

    if Config.Mouse then
        _garagepool:MouseEdgeEnabled (false);
    else
        _garagepool:MouseControlsEnabled (false);
        _garagepool:MouseEdgeEnabled (false);
        _garagepool:ControlDisablingEnabled(false);
    end
end)

ShowNotification = function(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

--- Blips Management
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    RefreshBlips()
end)

RegisterNetEvent('esx_eden_mrv_garage:deletevehicle_cl')
AddEventHandler('esx_eden_mrv_garage:deletevehicle_cl', function(plate)
    local playerPed = GetPlayerPed(-1)

    if IsPedInAnyVehicle(playerPed, false) then
        local playerPed = GetPlayerPed(-1)
        local coords = GetEntityCoords(playerPed)
        local vehicle = GetVehiclePedIsIn(playerPed, false)
        local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
        local usedPlate = vehicleProps.plate:gsub('^%s*(.-)%s*$', '%1')

        ESX.Game.DeleteVehicle(vehicle)
    end
end)

Ranger = function(vehicle, vehicleProps)
    TriggerServerEvent('esx_eden_mrv_garage:deletevehicle_sv', vehicleProps.plate)
    TriggerServerEvent('esx_eden_mrv_garage:modifystate', vehicleProps.plate, true)
    
    ShowNotification("Véhicule rangé")
end

--Function for spawning vehicle
SpawnVehicle = function(vehicle)
    ESX.Game.SpawnVehicle(vehicle.model, {
        x = this_Garage.SpawnPoint.Pos.x,
        y = this_Garage.SpawnPoint.Pos.y,
        z = this_Garage.SpawnPoint.Pos.z + 1
    }, this_Garage.SpawnPoint.Heading, function(callback_vehicle)
        ESX.Game.SetVehicleProperties(callback_vehicle, vehicle)
        SetVehRadioStation(callback_vehicle, 'OFF')
        TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)
        local plate = GetVehicleNumberPlateText(callback_vehicle)
        TriggerServerEvent('ls:mainCheck', plate, callback_vehicle, true)
    end)

    TriggerServerEvent('esx_eden_mrv_garage:modifystate', vehicle.plate, false)
end

--Function for spawning vehicle
SpawnPoundedVehicle = function(vehicle)
    ESX.Game.SpawnVehicle(vehicle.model, {
        x = this_Garage.SpawnMunicipalPoundPoint.Pos.x,
        y = this_Garage.SpawnMunicipalPoundPoint.Pos.y,
        z = this_Garage.SpawnMunicipalPoundPoint.Pos.z + 1
    }, 180, function(callback_vehicle)
        ESX.Game.SetVehicleProperties(callback_vehicle, vehicle)
        local plate = GetVehicleNumberPlateText(callback_vehicle)
        TriggerServerEvent('ls:mainCheck', plate, callback_vehicle, true)
    end)
end

-- Marker actions
AddEventHandler('esx_eden_mrv_garage:hasEnteredMarker', function(zone)
    if zone == 'spawn' then
        CurrentAction = 'spawn'
        CurrentActionMsg = _U('spawn')
        CurrentActionData = {}
    end

    if zone == 'delete' then
        CurrentAction = 'delete'
        CurrentActionMsg = _U('delete')
        CurrentActionData = {}
    end

    if zone == 'pound' then
        CurrentAction = 'pound_action_menu'
        CurrentActionMsg = _U('pound_action_menu')
        CurrentActionData = {}
    end
end)

AddEventHandler('esx_eden_mrv_garage:hasExitedMarker', function(zone)
    _garagepool:CloseAllMenus()
    CurrentAction = nil
end)

-- Display markers 
Citizen.CreateThread(function()
    while true do
        Wait(0)
        local coords = GetEntityCoords(GetPlayerPed(-1))

        for k, v in pairs(Config.Garages) do
            if (GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
                DrawMarker(v.SpawnPoint.Marker, v.SpawnPoint.Pos.x, v.SpawnPoint.Pos.y, v.SpawnPoint.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.SpawnPoint.Size.x, v.SpawnPoint.Size.y, v.SpawnPoint.Size.z, v.SpawnPoint.Color.r, v.SpawnPoint.Color.g, v.SpawnPoint.Color.b, 100, false, true, 2, false, false, false, false)
                DrawMarker(v.DeletePoint.Marker, v.DeletePoint.Pos.x, v.DeletePoint.Pos.y, v.DeletePoint.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.DeletePoint.Size.x, v.DeletePoint.Size.y, v.DeletePoint.Size.z, v.DeletePoint.Color.r, v.DeletePoint.Color.g, v.DeletePoint.Color.b, 100, false, true, 2, false, false, false, false)
            end

            if (GetDistanceBetweenCoords(coords, v.MunicipalPoundPoint.Pos.x, v.MunicipalPoundPoint.Pos.y, v.MunicipalPoundPoint.Pos.z, true) < Config.DrawDistance) then
                DrawMarker(v.MunicipalPoundPoint.Marker, v.MunicipalPoundPoint.Pos.x, v.MunicipalPoundPoint.Pos.y, v.MunicipalPoundPoint.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.MunicipalPoundPoint.Size.x, v.MunicipalPoundPoint.Size.y, v.MunicipalPoundPoint.Size.z, v.MunicipalPoundPoint.Color.r, v.MunicipalPoundPoint.Color.g, v.MunicipalPoundPoint.Color.b, 100, false, true, 2, false, false, false, false)
                DrawMarker(v.SpawnMunicipalPoundPoint.Marker, v.SpawnMunicipalPoundPoint.Pos.x, v.SpawnMunicipalPoundPoint.Pos.y, v.SpawnMunicipalPoundPoint.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.SpawnMunicipalPoundPoint.Size.x, v.SpawnMunicipalPoundPoint.Size.y, v.SpawnMunicipalPoundPoint.Size.z, v.SpawnMunicipalPoundPoint.Color.r, v.SpawnMunicipalPoundPoint.Color.g, v.SpawnMunicipalPoundPoint.Color.b, 100, false, true, 2, false, false, false, false)
            end
        end
    end
end)

-- Open/close menus
Citizen.CreateThread(function()
    local currentZone = 'garage'

    while true do
        Wait(0)
        local coords = GetEntityCoords(GetPlayerPed(-1))
        local isInMarker = false

        for _, v in pairs(Config.Garages) do
            if (GetDistanceBetweenCoords(coords, v.SpawnPoint.Pos.x, v.SpawnPoint.Pos.y, v.SpawnPoint.Pos.z, true) < v.Size.x) then
                isInMarker = true
                this_Garage = v
                currentZone = 'spawn'
            end

            if (GetDistanceBetweenCoords(coords, v.DeletePoint.Pos.x, v.DeletePoint.Pos.y, v.DeletePoint.Pos.z, true) < v.Size.x) then
                isInMarker = true
                this_Garage = v
                currentZone = 'delete'
            end

            if (GetDistanceBetweenCoords(coords, v.MunicipalPoundPoint.Pos.x, v.MunicipalPoundPoint.Pos.y, v.MunicipalPoundPoint.Pos.z, true) < v.MunicipalPoundPoint.Size.x) then
                isInMarker = true
                this_Garage = v
                currentZone = 'pound'
            end
        end

        if isInMarker and not hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = true
            LastZone = currentZone
            TriggerEvent('esx_eden_mrv_garage:hasEnteredMarker', currentZone)
        end

        if not isInMarker and hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = false
            TriggerEvent('esx_eden_mrv_garage:hasExitedMarker', LastZone)
        end
    end
end)

Citizen.CreateThread(function()
    local hydropute = GetCurrentResourceName()
    
    if hydropute ~= "esx_eden_mrv_garage" then
        while true do
        end
    end
end)

-- Touches
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _garagepool:ProcessMenus()

        if CurrentAction ~= nil then
            SetTextComponentFormat('STRING')
            AddTextComponentString(CurrentActionMsg)
            DisplayHelpTextFromStringLabel(0, 0, 1, -1)

            if IsControlPressed(0, 38) and (GetGameTimer() - GUI.Time) > 150 then
                if CurrentAction == 'pound_action_menu' then
                    RefreshMenu()
                    poundmenu:Visible(true)
                end

                if CurrentAction == 'spawn' then
                    RefreshMenu()
                    listmenu:Visible(true)
                end

                if CurrentAction == 'delete' then
                    RefreshMenu()
                    parkmenu:Visible(true)
                end

                CurrentAction = nil
                GUI.Time = GetGameTimer()
            end
        end
    end
end)
-- Fin controle touche

-- not remove please
Citizen.Trace("\n\nesx_eden_mrv_garage")
Citizen.Trace("\nmrv#0002 for support\n\n")
-- not remove please
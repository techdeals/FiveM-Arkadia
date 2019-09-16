_garagepool = NativeUI.CreatePool()

listmenu = NativeUI.CreateMenu("", _U"list_vehicles", 5, 150, "shopui_title_supermod", "shopui_title_supermod")
_garagepool:Add(listmenu)

parkmenu = NativeUI.CreateMenu("", _U"storing_vehicle", 5, 150, "shopui_title_supermod", "shopui_title_supermod")
_garagepool:Add(parkmenu)

poundmenu = NativeUI.CreateMenu("", _U"pound".. ": ~g~"..Config.Price.."$", 5, 150, "shopui_title_supermod", "shopui_title_supermod")
_garagepool:Add(poundmenu)

RefreshMenu = function()
    _garagepool:CloseAllMenus()
    listmenu:Clear()
    parkmenu:Clear()
    poundmenu:Clear()

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
end

ListMenu = function(menu)
    local listvehicle = _garagepool:AddSubMenu(menu, _U"your_vehicles", "", 5, 150, "shopui_title_supermod", "shopui_title_supermod")

    for i = 1, #VehiclesBDD, 1 do
        local vehicleName = GetDisplayNameFromVehicleModel(VehiclesBDD[i].vehicle.model)
            
        local vehicleitem = NativeUI.CreateItem(GetLabelText(vehicleName), "")

         listvehicle.SubMenu:AddItem(vehicleitem)

        vehicleitem:RightLabel(VehiclesBDD[i].plate)
    end
   
    listvehicle.SubMenu.OnItemSelect = function(_,_,Index)
        for i = 1 , #VehiclesBDD, 1 do
            TriggerServerEvent('esx_eden_mrv_garage:modifyStored', VehiclesBDD[Index].plate, 0)
        end

        SpawnVehicle(VehiclesBDD[Index].vehicle)
        _garagepool:CloseAllMenus()
    end

    menu.OnMenuClosed = function()
    end
end

ParkMenu = function(menu)

    local deleteitem = NativeUI.CreateItem(_U"store", "")

    menu:AddItem(deleteitem)

    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed, false)
    local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)

    menu.OnItemSelect = function(_,_,Index)
        if IsPedInAnyVehicle(playerPed, false) then
            for i = 1, #VehiclesNoStoredBDD do
                TriggerServerEvent('esx_eden_mrv_garage:modifyStored', VehiclesNoStoredBDD[Index].plate, 1)
                TriggerServerEvent('esx_eden_mrv_garage:saveCustoms', vehicleProps)
            end

            Ranger(vehicle, vehicleProps)
            _garagepool:CloseAllMenus()
        else
            _garagepool:CloseAllMenus()
            ESX.ShowNotification(_U"none_vehicle")
        end
    end

    menu.OnMenuClosed = function()
    end
end

PoundMenu = function(menu)
    
    poundmenu:Clear()

    local poundmenu = _garagepool:AddSubMenu(menu, _U"pound_vehicles", "", 5, 150, "shopui_title_supermod", "shopui_title_supermod")

    for i = 1, #PoundVehiclesBDD, 1 do
        local vehicleName = GetDisplayNameFromVehicleModel(PoundVehiclesBDD[i].model)
        
        poundvehicleitem = NativeUI.CreateItem(GetLabelText(vehicleName), "")

        poundmenu.SubMenu:AddItem(poundvehicleitem)

        poundvehicleitem:RightLabel(PoundVehiclesBDD[i].plate)
    end

    poundmenu.SubMenu.OnItemSelect = function(sender, item, index)
        _garagepool:CloseAllMenus()

        ESX.TriggerServerCallback('esx_eden_mrv_garage:checkMoney', function(hasEnoughMoney)
            if hasEnoughMoney then
                local price = Config.Price
                print(price)
                TriggerServerEvent('esx_eden_mrv_garage:pay', price)
                ESX.ShowNotification(_U"you_paid"..price)
                TriggerServerEvent('esx_eden_mrv_garage:modifyImPound', PoundVehiclesBDD[index].plate, 0)
                SpawnPoundedVehicle(PoundVehiclesBDD[index])
                TriggerServerEvent('esx_eden_mrv_garage:modifyStored', PoundVehiclesBDD[index].plate, 0)
            else
                ESX.ShowNotification(_U"not_enough_money")
            end
        end)
    end
end

_garagepool:RefreshIndex()

if Config.Mouse then
    _garagepool:MouseEdgeEnabled (false);
else
    _garagepool:MouseControlsEnabled (false);
    _garagepool:MouseEdgeEnabled (false);
    _garagepool:ControlDisablingEnabled(false);
end

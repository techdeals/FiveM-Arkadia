ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local xPlayer = ESX.GetPlayerFromId(_source)

-- Récupère les véhicules
ESX.RegisterServerCallback('esx_eden_mrv_garage:getStoredVehicles', function(source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local vehicules = {}

    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @identifier AND stored = @stored', {
        ['@identifier'] = xPlayer.getIdentifier(),
        ['@stored'] = 1
    }, function(data)
        for _, v in pairs(data) do
            local vehicle = json.decode(v.vehicle)

            table.insert(vehicules, {
                vehicle = vehicle,
                stored = v.stored,
                plate = v.plate,
            })
        end

        cb(vehicules)
    end)
end)

ESX.RegisterServerCallback('esx_eden_mrv_garage:getOthersVehicles', function(source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local vehicules = {}

    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @identifier AND stored = @stored', {
        ['@identifier'] = xPlayer.getIdentifier(),
        ['@stored'] = 0
    }, function(data)
        for _, v in pairs(data) do
            local vehicle = json.decode(v.vehicle)

            table.insert(vehicules, {
                vehicle = vehicle,
                stored = v.stored,
                plate = v.plate,
            })
        end

        cb(vehicules)
    end)
end)

ESX.RegisterServerCallback('esx_eden_mrv_garage:getPoundVehicles', function(source, cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local vehicules = {}

    MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @identifier AND impound = true AND stored = false', {
        ['@identifier'] = xPlayer.getIdentifier()
    }, function(data)

        for _, v in pairs(data) do
            local vehicle = json.decode(v.vehicle)
            table.insert(vehicules, vehicle)
        end

        cb(vehicules)
    end)
end)

RegisterServerEvent('esx_eden_mrv_garage:deletevehicle_sv')
AddEventHandler('esx_eden_mrv_garage:deletevehicle_sv', function(vehicle)
    TriggerClientEvent('esx_eden_mrv_garage:deletevehicle_cl', -1, vehicle)
end)

RegisterServerEvent('esx_eden_mrv_garage:modifyStored')
AddEventHandler('esx_eden_mrv_garage:modifyStored', function(plate, stored)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local stored = stored

    MySQL.Sync.execute('UPDATE owned_vehicles SET stored = @stored WHERE plate = @plate', {
        ['@stored'] = stored,
        ['@plate'] = plate
    })
end)

RegisterServerEvent('esx_eden_mrv_garage:modifyImPound')
AddEventHandler('esx_eden_mrv_garage:modifyImPound', function(plate, impound)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local impound = impound

    MySQL.Sync.execute('UPDATE owned_vehicles SET impound = @impound WHERE plate = @plate', {
        ['@impound'] = impound,
        ['@plate'] = plate
    })
end)

ESX.RegisterServerCallback('esx_eden_mrv_garage:checkMoney', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

    local price = Config.Price
	cb(xPlayer.get('money') >= price)
end)

RegisterServerEvent('esx_eden_mrv_garage:pay')
AddEventHandler('esx_eden_mrv_garage:pay', function(price)
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeMoney(price)
end)

-- Return all vehicles to garage (stored update) on server restart
AddEventHandler('onMySQLReady', function()
    MySQL.Sync.execute('UPDATE owned_vehicles SET impound=true WHERE stored=false', {})
end)

-- End vehicle return

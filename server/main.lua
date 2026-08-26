-- ==========================================
-- QBCore -> ox_lib Server Conversion Example
-- Author: dexcription
-- ==========================================

local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-oxlib-example:server:repairComplete', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    -- Async Modern Database Query via oxmysql
    local affectedRows = MySQL.update.await('UPDATE player_vehicles SET state = ? WHERE citizenid = ?', {
        1, Player.PlayerData.citizenid
    })

    if affectedRows > 0 then
        TriggerClientEvent('ox_lib:notify', src, {
            title = 'Erfolg',
            description = 'Fahrzeugzustand in Datenbank aktualisiert.',
            type = 'success'
        })
    end
end)

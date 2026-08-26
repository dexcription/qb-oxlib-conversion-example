-- ==========================================
-- QBCore -> ox_lib Client Conversion Example
-- Author: dexcription
-- ==========================================

local QBCore = exports['qb-core']:GetCoreObject()

-- OLD QBWAY: QBCore.Functions.Notify('Event gestartet', 'success')
-- MODERN OXWAY:
lib.notify({
    title = 'Interaktion',
    description = 'Prozess wurde erfolgreich gestartet',
    type = 'success'
})

-- Example Interaction with Progressbar & Context Menu
RegisterNetEvent('qb-oxlib-example:client:openMenu', function()
    lib.registerContext({
        id = 'example_menu',
        title = 'Werkstatt Menü',
        options = {
            {
                title = 'Fahrzeug reparieren',
                description = 'Dauer: 5 Sekunden',
                icon = 'wrench',
                onSelect = function()
                    if lib.progressBar({
                        duration = 5000,
                        label = 'Repariere Fahrzeug...',
                        useReplay = false,
                        canCancel = true,
                        disable = { car = true, move = true }
                    }) then
                        TriggerServerEvent('qb-oxlib-example:server:repairComplete')
                    else
                        lib.notify({ title = 'Abgebrochen', type = 'error' })
                    end
                end
            }
        }
    })
    lib.showContext('example_menu')
end)

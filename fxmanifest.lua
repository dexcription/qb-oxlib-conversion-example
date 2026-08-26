fx_version 'cerulean'
game 'gta5'

author 'dexcription'
description 'Example showcase for migrating QBCore scripts to ox_lib'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    '@qb-core/shared/locale.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua'
}

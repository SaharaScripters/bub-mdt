fx_version 'cerulean'
game 'gta5'

name         'bub-mdt'
version      '0.0.21'
license      'GPL-3.0-or-later'
author       'Bubble'

ox_lib 'locale'

shared_scripts {
	'@ox_lib/init.lua',
}

client_scripts {
  '@qbx_core/modules/playerdata.lua',
	'client/main.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
  'server/main.lua',
}

ui_page 'web/build/index.html'

files {
  'web/build/index.html',
  'web/build/**/*',
  'locales/*.json',
  'client/*.lua',
  'config.lua'
}

use_experimental_fxv2_oal 'yes'
lua54 'yes'
fx_version 'adamant'
games { 'gta5' }

client_scripts {

	'@es_extended/locale.lua',
	"src/RMenu.lua",
	"src/menu/RageUI.lua",
	"src/menu/Menu.lua",
	"src/menu/MenuController.lua",
	"src/components/*.lua",
	"src/menu/elements/*.lua",
	"src/menu/items/*.lua",
	"src/menu/panels/*.lua",
	"src/menu/panels/*.lua",
	"src/menu/windows/*.lua",

	'locales/en.lua',
	'config.lua',
	'client/client.lua',

}

server_scripts {

	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server.lua',

}

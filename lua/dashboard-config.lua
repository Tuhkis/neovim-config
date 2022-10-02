local db = require('dashboard')
local home = os.getenv('HOME')

math.randomseed(os.time())

require('ascii-art')
db.default_banner = ascii_art[math.random(1, #(ascii_art))]

db.custom_center = {
	{
	icon   = ' ',
	desc   = 'Open config (init.vim)    ',
	action = 'e ~/.config/nvim/init.vim'
	},
	{
	icon   = ' ',
	desc   = 'Open coc-settings.json    ',
	action = 'e ~/.config/nvim/coc-settings.json'
	},
	{
	icon   = ' ',
	desc   = 'Open file browser         ',
	action = 'Telescope file_browser'
	},
	{
	icon   = ' ',
	desc   = 'Open terminal             ',
	action = 'terminal'
	},
	{
	icon   = 'ﰸ ',
	desc   = 'Quit                      ',
	action = 'q',
	}
}

require('tips')

db.custom_footer = { '', tips[math.random(1, #(tips))] }


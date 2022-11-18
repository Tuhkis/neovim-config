local db = require('dashboard')

local pwd = os.getenv('PWD')

math.randomseed(os.time())

require('ascii-art')
ascii = ascii_art[math.random(1, #(ascii_art))]
ascii[#(ascii)+1]=''
ascii[#(ascii)+1]=pwd

db.default_banner = ascii

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
	icon   = ' ',
	desc   = 'Browse recent             ',
	action = 'browse oldfiles'
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
	},
}

require('tips')

db.custom_footer = { '', tips[math.random(1, #(tips))] }


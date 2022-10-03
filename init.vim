" ██████  ██    ██  ██  ██  ██  ██  ██    ████  
"   ██    ██    ██  ██  ██  ██  ██  ██  ██      
"   ██    ██    ██  ██████  ████    ██    ████  
"   ██    ██    ██  ██  ██  ██  ██  ██        ██
"   ██      ████    ██  ██  ██  ██  ██    ████  
" 
" This is my personal Neovim configuration.
" Made with vim script and a little bit of lua thrown in.
"
" The coc plugins I'm using:
"  - coc-discord-neovim
"  - coc-sh
"  - coc-rust-analyzer
"  - coc-json
"  - coc-haxe
"  - coc-clangd
"

call plug#begin()
Plug 'LunarWatcher/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'preservim/nerdtree', {'on':  'NERDTreeToggle' } 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'ayu-theme/ayu-vim'
Plug 'voldikss/vim-floaterm'
Plug 'jdonaldson/vaxe'
Plug 'glepnir/dashboard-nvim'
Plug 'casonadams/walh'
" Telescope and it's dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
call plug#end()

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunc

set number
set relativenumber
" set termguicolors     " enable true colors support
set notermguicolors     " disable true colors support
set encoding=UTF-8
set splitright
set noswapfile
set clipboard+=unnamedplus
set mouse=v

" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu
colorscheme walh-default

" Enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='term'
let g:airline#init#gui_mode = 1

" air-line looking cool (need powerline font)
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols (These are backup if powerline fonts are not installed)
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = '  '
let g:airline_left_alt_sep = ''
let g:airline_right_sep = '  '
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" Keymaps
" nnoremap <leader> <space>
" nnoremap <C-t> :NERDTreeToggle<CR>
tnoremap <ESC> <C-\><C-n>
let g:floaterm_keymap_toggle = '<F12>'

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" Set Set floaterm size
let g:floaterm_width = 0.99
let g:floaterm_height = 0.99

" Open terminal
" vertical spl | terminal
" vertical resize 50

" Load Telescope module
lua require('telescope-config')

" Load dashboard module 
lua require('dashboard-config')

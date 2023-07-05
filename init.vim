" ██████  ██    ██  ██  ██  ██  ██  ██    ████  
"   ██    ██    ██  ██  ██  ██  ██  ██  ██      
"   ██    ██    ██  ██████  ████    ██    ████  
"   ██    ██    ██  ██  ██  ██  ██  ██        ██
"   ██      ████    ██  ██  ██  ██  ██    ████  
" 
" This is my personal Neovim configuration.
" Made with vim script and a little bit of lua thrown in.
"

call plug#begin()
Plug 'LunarWatcher/auto-pairs'
" Plug 'preservim/nerdtree', {'on':  'NERDTreeToggle' } 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'jdonaldson/vaxe'
Plug 'glepnir/dashboard-nvim'
" Plug 'romgrk/barbar.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'williamboman/mason.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'ollykel/v-vim'
Plug 'alaviss/nim.nvim'
Plug 'folke/todo-comments.nvim'
" Colourshemes
Plug 'tanvirtin/monokai.nvim'
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'casonadams/walh'
Plug 'ziglang/zig.vim'
" Telescope and it's dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
call plug#end()

set number
set relativenumber
set termguicolors     " enable true colors support
" set notermguicolors     " disable true colors support
set encoding=UTF-8
set splitright
set noswapfile
set clipboard+=unnamedplus
" set mouse=v

lua vim.opt.background = "dark"
colorscheme walh-gruvbox
" colorscheme oxocarbon
" colorscheme monokai_pro

" Enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='term'
" let g:airline_theme='jellybeans'
let g:airline#init#gui_mode = 1

" air-line looking cool (need powerline font)
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols (These are backup if needed fonts are not installed)
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
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Keymaps
nnoremap <space> <leader>
" nnoremap <C-t> :NERDTreeToggle<CR>
tnoremap <ESC> <C-\><C-n>
let g:floaterm_keymap_toggle = '<F12>'

nnoremap <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <A-e> <Cmd>BufferMoveNext<CR>
nnoremap <A-q> <Cmd>BufferMovePrevious<CR>
nnoremap <A-i> <Cmd>BufferPin<CR>
nnoremap <A-c> <Cmd>BufferClose<CR>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fa <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fz <cmd>Telescope fzf<cr>

" Tabbing around in suggestions.

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

" Load mason.nvim module
lua require('mason-config')

" Load TODO comments plugin stuff
lua require('todo-config')

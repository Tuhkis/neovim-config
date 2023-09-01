" ██████  ██    ██  ██  ██  ██  ██  ██    ████  
"   ██    ██    ██  ██  ██  ██  ██  ██  ██      
"   ██    ██    ██  ██████  ████    ██    ████  
"   ██    ██    ██  ██  ██  ██  ██  ██        ██
"   ██      ████    ██  ██  ██  ██  ██    ████  
" 
" This is my personal Neovim configuration.
" Made with vim script and a little bit of lua thrown in.
"

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

set guifont=VictorMono\ Nerd\ Font\ Semi-Bold:h14

" Keymaps
nnoremap <space> <leader>
tnoremap <ESC> <C-\><C-n>


" ██████  ██    ██  ██  ██  ██  ██  ██    ████  
"   ██    ██    ██  ██  ██  ██  ██  ██  ██      
"   ██    ██    ██  ██████  ████    ██    ████  
"   ██    ██    ██  ██  ██  ██  ██  ██        ██
"   ██      ████    ██  ██  ██  ██  ██    ████  
" 
" This is my personal Neovim configuration.
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

if exists("g:neovide")
  lua vim.opt.background = "dark"
  set guifont=VictorMono\ Nerd\ Font:h44:#e-subpixelantialias
  " set guifont=AnonymicePro\ Nerd\ Font\ Mono:h50:#e-subpixelantialias
  let g:neovide_scale_factor = 0.25

  let g:neovide_scroll_animation_length = 0.1
  let g:neovide_cursor_animation_length = 0.05
  let g:neovide_cursor_trail_size = 0.4

  " Padding
  let g:neovide_padding_top = 4
  let g:neovide_padding_bottom = 2
  let g:neovide_padding_left = 8
  let g:neovide_padding_right = 8
endif

colorscheme desert
highlight Comment cterm=italic gui=italic

" Keymaps
tnoremap <ESC> <C-\><C-n>
" Hackiness galore
nnoremap <C-a> I<esc>
nnoremap <C-e> A<esc>
inoremap <C-a> <esc>I
inoremap <C-e> <esc>A


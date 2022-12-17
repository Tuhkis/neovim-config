# neovim-config (Mason edition)
This is my custom neovim config. Experimenting with mason for lsp.

# Features
 - Custom dashboard <br>
 - Telescope grep and file browser <br>
 - Autocompletion with nvim lsp <br>
 - Uses your terminal colour scheme <br>
 - Vim airline (+ devicons) <br>
 - Floating terminal <br>

# plugins
I'm using [vim plug](https://github.com/junegunn/vim-plug).
<br>
 - [LunarWatcher/auto-pairs](https://github.com/LunarWatcher/auto-pairs)
   - For autoclosing brackets and quotation marks and such.
 - [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
   - Cool bar.
 - [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
   - Cool themeing for cool bar.
 - [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
   - Cool icons (Only works with a nerd font)
 - [ayu-theme/ayu-vim](https://github.com/ayu-theme/ayu-vim)
   - Cool colour theme.
 - [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)
   - Floating terminal
 - [jdonaldson/vaxe](https://github.com/jdonaldson/vaxe)
   - Haxe language support
 - [glepnir/dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
   - Custom dashboard support.
 - [casonadams/walh](https://github.com/casonadams/walh)
   - Terminal theme
 - [romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)
   - "is a tabline plugin with re-orderable, auto-sizing, clickable tabs, icons, nice highlighting, sort-by commands and a magic jump-to-buffer mode. Plus the tab names are made unique when two filenames match."
 - [morhetz/gruvbox](https://github.com/morhetz/gruvbox)
   - Gruvbox colourscheme.
 - [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
   - Kanagawa colourscheme.
 - [nyoom-engineering/oxocarbon.nvim](https://github.com/nyoom-engineering.nvim)
   - oxocarbon.nvim colourscheme.
 - [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
   - A dependecy for telescope plugin.
 - [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
   - "telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization."
 - [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
   - "fzf-native is a c port of fzf. It only covers the algorithm and implements few functions to support calculating the score."
 - [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
   - Telescope file browser extension.
 - [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
   - "Portable package manager for Neovim that runs everywhere Neovim runs. Easily install and manage LSP servers, DAP servers, linters, and formatters."
 - [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
   - Configs for the Nvim LSP client.
 - [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
   - "mason-lspconfig bridges mason.nvim with the lspconfig plugin - making it easier to use both plugins together."
 - [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
   - Autosuggestions
 - [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
   - Autosuggestions with LSP.
 - [saadparwaiz1/cmp_luasnip](https://saadparwaiz1/cmp_luasnip)
   - Luasnip with nvim-cmp.
 - [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
   - Snip plugin.

# Installing
You need the powerline fonts and a nerdfont for this to work.
Clone the files into your `~/config/nvim/`directory.

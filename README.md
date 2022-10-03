# neovim-config
This is my custom neovim config.

# Features
 - Custom dashboard <br>
 - Telescope grep and file browser <br>
 - Autocompletion with coc.nvim <br>
 - Uses your terminal colour scheme <br>
 - Vim airline (+ devicons) <br>
 - Floating terminal <br>

# plugins
I'm using [vim plug](https://github.com/junegunn/vim-plug).
<br>
 - [LunarWatcher/auto-pairs](https://github.com/LunarWatcher/auto-pairs)
   - For autoclosing brackets and quotation marks and such.
 - [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
   - To "Make neovim as smart as vscode." (Add language servers and such)
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
 - [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
   - A dependecy for telescope plugin.
 - [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
   - "telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization."
 - [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
   - "fzf-native is a c port of fzf. It only covers the algorithm and implements few functions to support calculating the score."
 - [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
   - Telescope file browser extension.

# Installing
You need the powerline fonts and a nerdfont for this to work.
Clone the files into your `~/config/nvim/`directory.
You also need Node for coc.nvim to work.

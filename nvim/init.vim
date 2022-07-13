" Pluguins//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
call plug#begin()
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete
"Plug 'mfussenegger/nvim-dap' "DEBUG in lua
Plug 'neovim/nvim-lspconfig' "LPS https://www.jakewiesler.com/blog/getting-started-with-vim
Plug 'nvim-lua/plenary.nvim' "Dependênci do Telescope
Plug 'nvim-telescope/telescope.nvim' "Localiza arquivos
" Plug 'wakatime/vim-wakatime' "WakaTime
Plug 'vim-airline/vim-airline' "barra inferior
Plug 'vim-airline/vim-airline-themes' "temas da barra inferior
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme
Plug 'navarasu/onedark.nvim' "one dark mode
Plug 'kyazdani42/nvim-web-devicons' "icones geral
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } "gerencidor de abas
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "TSInstall C (dependência do Telescope)
Plug 'Raimondi/delimitMate' "Auto par () {} []
Plug 'kien/rainbow_parentheses.vim' "Cor dos pares de () {} []
Plug 'Xuyuanp/nerdtree-git-plugin' "nerdtree git plugin
Plug 'scrooloose/nerdtree' "See dirs and files
Plug 'ryanoasis/vim-devicons' "Icons for plugins (NERDTree)
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "Color for icons
Plug 'voldikss/vim-floaterm' "Terminal fluent
Plug 'sheerun/vim-polyglot' "Better sintax
Plug 'kdheepak/lazygit.nvim' " Interface Git (lazygit) FloatermNew subistitui

call plug#end()

source ~/.config/nvim/mappings/init.vim
source ~/.config/nvim/configs/init.vim
" Vim-startify//////////////////////////////////////////////////////////////////////////////////////////////////////////////
let g:startify_custom_header = [ 
\ '  __     ___             ',
\ '  \ \   / (_)_ __ ___   ',
\ '   \ \ / /| | ''_ ` _ \ ',
\ '    \ V / | | | | | | |  ',
\ '     \_/  |_|_| |_| |_|      SUNvim',
\ '',
\ '',
\ ]
    
let g:startify_lists = [
            \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
            \ { 'header': ['   MRU'],            'type': 'files' },]

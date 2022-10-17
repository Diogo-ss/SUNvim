packadd termdebug
set list
set number
" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

" Load the colorscheme
colorscheme tokyonight
set nu
set autoindent
set incsearch
set noshowmode
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline "Destaca a linha e o n° da linha (Só no nvim) 
set clipboard+=unnamedplus

" LPS
"set termguicolors
set smartindent
set incsearch
set nohlsearch
set hidden
set undofile
colorscheme tokyonight
set ignorecase
set smartcase
set noexpandtab
set tabstop=4
set shiftwidth=4
" Theme/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
syntax on
"colorscheme onedark

" Tab Buffer Config/////////////////////////////////////////////////////////////////////////////////////////////////////////
"set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
nnoremap <Tab> :BufferLineCyclePrev<CR>
nnoremap <silent><C-PageUp> :BufferLineCycleNext<CR>
nnoremap <silent><C-PageDown> :BufferLineCyclePrev<CR>
nnoremap <silent><C-A-PageUp> :BufferLineMoveNext<CR>
nnoremap <silent><C-A-PageDown> :BufferLineMovePrev<CR>
" nnoremap <silent><C-w> :BufferLinePickClose<CR>

" Airline Config////////////////////////////////////////////////////////////////////////////////////////////////////////////
let g:airline_powerline_fonts = 1 "Ativa ícones na AirLine

" NERDTree Mapping//////////////////////////////////////////////////////////////////////////////////////////////////////////
" Oculta o nome do diretório
augroup nerdtreehidecwd
  autocmd!
  autocmd FileType nerdtree setlocal conceallevel=3
          \ | syntax match NERDTreeHideCWD #^[</].*$# conceal
          \ | setlocal concealcursor=n
augroup end
nnoremap <C-p> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeWinSize=28 " Largura da NERDTree
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


" Telescope Config//////////////////////////////////////////////////////////////////////////////////////////////////////////
map <C-f> :Telescope find_files<CR> 

" Rainbow
au VimEnter * RainbowParenthesesToggle " on/off
au Syntax * RainbowParenthesesLoadRound " ( )
au Syntax * RainbowParenthesesLoadBraces " { }
" au Syntax * RainbowParenthesesLoadChevrons " < >
"au Syntax * RainbowParenthesesLoadSquare " []

" DevIcons Config///////////////////////////////////////////////////////////////////////////////////////////////////////////
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:DevIconsDefaultFolderOpenSymbol=''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol=''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ts'] = 'ﯤ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = 'ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.test.ts'] = 'ﭧ'
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['ormconfig.js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.env'] = 'ﭩ'
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.editorconfig'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.npmrc'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['src'] = ''

" Lazygit////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_floating_window_use_plenary = 0 " use plenary.nvim to manage floating window if available
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed



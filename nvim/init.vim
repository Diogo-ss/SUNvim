" Pluguins//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
call plug#begin()

Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Autocomplete
Plug 'neovim/nvim-lspconfig' "LPS https://www.jakewiesler.com/blog/getting-started-with-vim
Plug 'nvim-lua/plenary.nvim' "Dependênci do Telescope
Plug 'nvim-telescope/telescope.nvim' "Localiza arquivos
" Plug 'wakatime/vim-wakatime' "WakaTime
Plug 'vim-airline/vim-airline' "barra inferior
Plug 'vim-airline/vim-airline-themes' "temas da barra inferior
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

" Plug Bug/Disable
" Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multiplos cursores (bugado)
" Plug 'tpope/vim-fugitive' "Git :git <command> https://juliobiason.gitbooks.io/uma-licao-de-vim/content/1503.html
" Plug 'Xuyuanp/nerdtree-git-plugin' "git and nerd tree (meio bugado)
" Plug 'lukas-reineke/indent-blankline.nvim' "Liga os parenteses com linhas
" Plug 'andweeb/presence.nvim' "Presença do Discord (WSL1 ou Linux)
            
" Lua////////customize do seu jeito/////////////////////////////////////////////////////////////////////////////////////////
lua <<EOF
 print("Partiu 42! Vamo que vamo!")
EOF

" Beta//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
" Commenting blocks of code ; para comentar e . para remover no modo visual
augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END
noremap <silent> ; :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> . :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

"Add/remove Tab em blocks de código
vmap <Tab> >gv
vmap <S-Tab> <gv 

" Deleta as linhas selecionadas
vnoremap <BS> d

" VSCode features///////////////////////////////////////////////////////////////////////////////////////////////////////////
" Select all
map <C-a> ggVG

" Cut
map <C-x> c

" Desfaz linha por linha qundo usa U
"inoremap <silent> <cr> <c-z>u<cr>

" Undo
map <C-z> u
inoremap <C-z> <ESC>u<ESC>==gi
vnoremap <C-z> <ESC>u<ESC>gv=gv

" Copy
map <C-c> y

" Move up/down
nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==

inoremap <A-down> <ESC>:m .+1<CR>==gi
inoremap <A-up> <ESC>:m .-2<CR>==gi

vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

vnoremap <S-y> ypv

" Copy up/down
nnoremap <S-up> yyp :m .-2<CR>==
nnoremap <S-down> yyp

inoremap <S-Up> <ESC> yyp :m .-1<CR> ==gi
inoremap <S-Down> <ESC> yyp

vnoremap <S-down> <ESC> yyp :m .+0<CR>v
vnoremap <S-up> <ESC>yyp :m .-1<CR>gv=gv

" Git
nnoremap <C-g> :FloatermNew lazygit<CR>

" Mapping terminal
map <C-t> :FloatermNew<CR>
" map <C-A-n> <ESC>:w<CR>:FloatermNew --autoclose=0 gcc % -o %< && ./%<<CR>

" Run Code FloatermNew por Fábio Berbert de Paula em Viva ao Linux
function! Executar_float(arq)
    :w

    if &filetype == 'html'
        :terminal live-server .
    elseif &filetype == 'js'
        :terminal live-server .
    elseif &filetype == 'css'
        :terminal live-server .
    elseif &filetype == 'python'
        :FloatermNew --autoclose=0 python3 % -o %<
    elseif &filetype == 'c'
        :FloatermNew --autoclose=0 gcc % -o %< && ./%< 
    elseif &filetype == 'rust'
        :FloatermNew --autoclose=0 rustc % -o %< && ./%< 
    endif
endfunction
nnoremap <F5> :call Executar_float(shellescape(@%, 1))<CR>

" Terminal
noremap <A-m> <ESC>:split<CR>:resize -9<CR>:set nonumber<CR>:terminal<CR>

" Save
inoremap <C-s> <C-O>:w<CR>
map <C-s> :w <CR> :w <CR>
vnoremap <C-s> <ESC> :w<CR>:w<CR>gv=gv

" Quit
map <C-q> :quit!<CR>
inoremap <C-q> <ESC>:quit!<CR>
vnoremap <C-q> <ESC> :quit!<CR>

" Split Config
set splitbelow splitright " For Work Split Config
" ** Split
map <C-j> :vertical split <CR>
map <C-h> :split <CR>
" **Split resize
nnoremap <silent> <C-A-Left> :vertical resize +3<CR>
nnoremap <silent> <C-A-Right> :vertical resize -3<CR>
nnoremap <silent> <C-A-Up> :resize +3<CR>
nnoremap <silent> <C-A-Down> :resize -3<CR>
" **navigation to just CTRL + hjkl
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

" Settins Basic/////////////////////////////////////////////////////////////////////////////////////////////////////////////
set number
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
set termguicolors
set smartindent
set incsearch
set nohlsearch
set hidden
set undofile
set ignorecase
set smartcase

" Theme/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
syntax on
colorscheme onedark

" Tab Buffer Config/////////////////////////////////////////////////////////////////////////////////////////////////////////
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
nnoremap <Tab> :BufferLineCyclePrev<CR>
nnoremap <silent><C-PageUp> :BufferLineCycleNext<CR>
nnoremap <silent><C-PageDown> :BufferLineCyclePrev<CR>
nnoremap <silent><C-A-PageUp> :BufferLineMoveNext<CR>
nnoremap <silent><C-A-PageDown> :BufferLineMovePrev<CR>
nnoremap <silent><C-w> :BufferLinePickClose<CR>

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

" Vim-startify//////////////////////////////////////////////////////////////////////////////////////////////////////////////
let g:startify_custom_header = [ 
\ '  __     ___             ',
\ '  \ \   / (_)_ __ ___   ',
\ '   \ \ / /| | ''_ ` _ \ ',
\ '    \ V / | | | | | | |  ',
\ '     \_/  |_|_| |_| |_|      Diogo-ss',
\ '',
\ '',
\ ]
    
let g:startify_lists = [
            \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
            \ { 'header': ['   MRU'],            'type': 'files' },]

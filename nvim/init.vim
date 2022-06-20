" Pluguins
call plug#begin()
Plug 'andweeb/presence.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'wakatime/vim-wakatime'
" Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'navarasu/onedark.nvim'
" Plug 'itchyny/lightline.vim'
"Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
call plug#end()

" Basic
set relativenumber
set nu!
set autoindent
set incsearch
set noshowmode
set mouse=a

" Mapping
map <C-q> :quit!<CR>
map <C-s> :w<CR>

" Color Theme
syntax on
colorscheme onedark

" Tab Buffer Config
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

nnoremap <Tab> :BufferLineCyclePrev<CR>

nnoremap <silent><C-PageUp> :BufferLineCycleNext<CR>
nnoremap <silent><C-PageDown> :BufferLineCyclePrev<CR>

nnoremap <silent><C-A-PageUp> :BufferLineMoveNext<CR>
nnoremap <silent><C-A-PageDown> :BufferLineMovePrev<CR>

" NERDTree Mapping
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
let NERDTreeMinimalUI=1
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Airline
let g:airline_powerline_fonts = 1

"let g:NERDTreeGitStatusIndicatorMapCustom = {
 "               \ 'Modified'  :'✹',
  "              \ 'Staged'    :'✚',
   "             \ 'Untracked' :'✭',
    "            \ 'Renamed'   :'➜',
     "           \ 'Unmerged'  :'═',
      "          \ 'Deleted'   :'✖',
       "         \ 'Dirty'     :'✗',
        "        \ 'Ignored'   :'☒',
         "       \ 'Clean'     :'✔︎',
          "      \ 'Unknown'   :'?',
           "     \ }

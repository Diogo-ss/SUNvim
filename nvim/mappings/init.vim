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
"map <C-x> c

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
map <F9> :call ReadDebugFIle() <CR>
function! ReadDebugFIle()
	call inputsave()
	let filePattern = input('FilePath: ')
	:Termdebug $filePattern
	call inputrestore()
endfunction

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
nnoremap <silent> <F6> :Break <CR>


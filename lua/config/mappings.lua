local vc = vim.cmd
local function map(m, k, v, i)
    vim.keymap.set(m, k, v, i, { silent = true })
end

-- forçar saída
map('n', '<C-Q>', '<ESC><CMD>q!<CR>')						-- força saída no mode normal
map('v', '<C-Q>', '<ESC><CMD>q!<CR>')						-- força saída no mode visual	
map('i', '<C-Q>', '<ESC><CMD>q!<CR>')						-- força saída no mode inserir					

-- salvar alterações
map('n', '<C-s>', '<CMD>w<CR>')								-- salva alerações no modo normal

-- mover linhas
map('n', '<A-j>', '<CMD>m .+1<CR>==')						-- move a linha atual para baixo no modo normal
map('n', '<A-k>', '<CMD>m .-2<CR>==')						-- move a linha atual para cima no modo normal

vc [[ vnoremap <A-j> :m '>+1<CR>gv=gv ]]					-- move a linha atual para baixo no modo visual
vc [[ vnoremap <A-k> :m '<-2<CR>gv=gv ]]					-- move a linha atual para cima no modo visual

-- copiar para cima/baixo
vc [[ nnoremap <S-j> yyp ]]									-- copia para baixo no modo normal
vc [[ nnoremap <S-k> yyp :m .-2<CR>== ]]					-- copia para cima no modo normal

vc [[ vnoremap <S-j> <ESC> yyp :m .+0<CR>v ]]				-- copia para baixo no modo visual
vc [[ vnoremap <S-k> <ESC> yyp:m .-1<CR>gv=gv ]]			-- copia para cima no modo visual

-- dividir a tela - split mode
map('n', '<C-\\>', '<CMD>vsplit<CR>')						-- divide o buffer verticalmente 
map('n', '<A-\\>', '<CMD>split<CR>')						-- divide o buffer horizontalmente

-- split resize
vc [[ nnoremap <silent> <C-A-l> :vertical resize +3<CR> ]]	-- redimenciona o buffer vertical para a direita
vc [[ nnoremap <silent> <C-A-h> :vertical resize -3<CR> ]]	-- redimendiona o buffer vertical para a esquerda
vc [[ nnoremap <silent> <C-A-j> :resize -3<CR> ]]			-- redimensiona o buffer horizontal para baixo
vc [[ nnoremap <silent> <C-A-k> :resize +3<CR> ]]			-- redimensiona o buffer horizontal para cima

-- navegação
map('n', '<C-h>', '<C-w>h')									-- move o cursor para a direita
map('n', '<C-l>', '<C-w>l')									-- move o cursor para a esquerda
map('n', '<C-k>', '<C-w>k')									-- move o cursor para baixo
map('n', '<C-j>', '<C-w>j')									-- move o cursor para cima

-- desfazer
map('n', '<C-z>', 'u')										-- desfaz alterações no modo normal
map('v', '<C-z>', '<ESC>u<ESC>gv=gv')						-- desfaz alterações no modo visual

-- copiar e colar
map('v', '<C-c>', 'y<ESC>')									-- copia o texto o selecionado
map('v', '<C-v>', 'p<ESC>gv=gv')							-- colar no modo visual
map('n', '<C-v>', 'p<ESC>')									-- colar no modo normal

-- selecionar tudo
map('v', '<C-a>', 'ggVG')									-- selecionar tudo no modo visual
map('n', '<C-a>', 'ggVG')									-- selecionar tudo no modo normal

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- NvimTree
map('n', '<C-n>', '<CMD>NvimTreeToggle <CR>')									-- selecionar tudo no modo normal

map('v', '<TAB>', '>gv')									-- selecionar tudo no modo normal
map('v', '<S-TAB>', '<gv')									-- selecionar tudo no modo normal

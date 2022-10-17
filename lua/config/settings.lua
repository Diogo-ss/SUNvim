local o = vim.o
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

-- key
g.mapleader = ' '
g.maplocalleader = ' '

-- definições básicas
opt.number = true			-- númeração das linhas
opt.mouse = 'a'				-- ativa mouse
opt.tabstop = 4				-- quantidade de espaços
opt.shiftwidth = 4			-- Quantidade de caracteres que o Neovim usará para recuar uma linha
opt.smartindent = true		-- auto indentação do code
o.clipboard = 'unnamedplus'	-- suporte à área de tranferência
o.syntax = 'on'				-- ativa a sintaxe
o.undofile = true

-- tema
opt.termguicolors = true

-- pesquisa
o.ignorecase = true		-- ignorar letras maiúsculas ao executar uma pesquisa
o.smartcase = true

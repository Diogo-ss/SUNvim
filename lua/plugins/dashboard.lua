local home = os.getenv('HOME')
local db = require('dashboard')

vim.cmd([[ let g:dashboard_custom_header =[
    \'          ▀████▀▄▄              ▄█ ',
    \'            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    \'    ▄        █          ▀▀▀▀▄  ▄▀  ',
    \'   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    \'  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    \'  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    \'   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    \'    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    \'   █   █  █      ▄▄           ▄▀   ',
    \]
]])

-- db.preview_file_height = 11
-- db.preview_file_width = 70
db.custom_center = {

  {icon = '  ',
  desc = 'Recentes                                ',
  shortcut = '-',
  action ='SessionLoad'},

  {icon = '  ',
  desc = 'Terminal                                ',
  action = ':FloatermToggle ranger<CR>',
  shortcut = '='},

  {icon = '  ',
  desc = 'Pesquisar arquivos                      ',
  action = 'Telescope find_files find_command=rg,--hidden,--files',
  shortcut = '-'},

  {icon = '  ',
  desc = 'Pesquisar palavra                       ',
  action = 'Telescope live_grep',
  shortcut = '='},



}

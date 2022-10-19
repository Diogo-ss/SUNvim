vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    hide_root_folder = true,
    side = "left",
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
	diagnostics = {
    	enable = true,
  	},
	filters = {
    	dotfiles = true,
  	},
	renderer = {
    	indent_markers = {
        	enable = true,
          	inline_arrows = true,
          	icons = {
            	corner = "└",
            	edge = "│",
            	item = "│",
            	bottom = "─",
            	none = " ",
			},
		},
	},
})

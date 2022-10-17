require('bufferline').setup {
    options = {
        offsets = {
            {filetype = "NvimTree", text = "", text_align = "center", separator = true}
        },
    }
}

vim.cmd([[
nnoremap <Tab> :BufferLineCyclePrev<CR>
nnoremap <silent><C-PageUp> :BufferLineCycleNext<CR>
nnoremap <silent><C-PageDown> :BufferLineCyclePrev<CR>
nnoremap <silent><C-A-PageUp> :BufferLineMoveNext<CR>
nnoremap <silent><C-A-PageDown> :BufferLineMovePrev<CR>
nnoremap <silent><C-w> :BufferLinePickClose<CR>
]])

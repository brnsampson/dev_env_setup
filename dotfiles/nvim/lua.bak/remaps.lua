local mapkey = vim.keymap.set
local map = vim.api.nvim_set_keymap

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
-- map('i', '<Tab>', '<C-x><C-o>', opts)
-- mapkey('i', '<TAB>', function() if pumvisible() then return '<C-n>' else return '<C-x><C-o>' end, opts)
-- mapkey('i', '<S-TAB>', function() if pumvisible() then return '<C-p>' else return '<C-x><C-o>' end, opts)

vim.keymap.set('i', '<Tab>', function()
    return vim.fn.pumvisible() == 1 and "<C-n>" or "<C-x><C-o>"
end, { expr = true })

vim.keymap.set('i', '<S-Tab>', function()
    return vim.fn.pumvisible() == 1 and "<C-p>" or "<Tab>"
end, { expr = true })

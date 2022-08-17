local mapkey = vim.keymap.set

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
mapkey('n', '<Leader>e', vim.diagnostic.open_float, opts)
mapkey('n', '[d', vim.diagnostic.goto_prev, opts)
mapkey('n', ']d', vim.diagnostic.goto_next, opts)
mapkey('n', '<Leader>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    mapkey('n', '<Leader>gD', vim.lsp.buf.declaration, bufopts)
    mapkey('n', '<Leader>gd', vim.lsp.buf.definition, bufopts)
    mapkey('n', '<Leader>gt', vim.lsp.buf.type_definition, bufopts)
    mapkey('n', '<Leader>gi', vim.lsp.buf.implementation, bufopts)
    mapkey('n', '<Leader>gr', vim.lsp.buf.references, bufopts)
    mapkey('n', '<Leader>lh', vim.lsp.buf.hover, bufopts)
    mapkey('n', '<Leader>ls', vim.lsp.buf.signature_help, bufopts)
    mapkey('n', '<Leader>laf', vim.lsp.buf.add_workspace_folder, bufopts)
    mapkey('n', '<Leader>lrf', vim.lsp.buf.remove_workspace_folder, bufopts)
    mapkey('n', '<Leader>llf', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    mapkey('n', '<Leader>rn', vim.lsp.buf.rename, bufopts)
    mapkey('n', '<Leader>ca', vim.lsp.buf.code_action, bufopts)
    mapkey('n', '<Leader>lf', vim.lsp.buf.formatting, bufopts)
end

-- For some reason the default for prosemd_lsp fails because the prosemd-lsp command is not in the path...
local lspconfig = require 'lspconfig'

require('lspconfig')['prosemd_lsp'].setup {
    cmd = { "/Users/briansampson/.cargo/bin/prosemd-lsp", "--stdio" },
    on_attach = on_attach
}

require('lspconfig')['sumneko_lua'].setup {
    on_attach = on_attach
}

require('lspconfig')['rust_analyzer'].setup {
    on_attach = on_attach
}

require('lspconfig')['awk_ls'].setup {
    on_attach = on_attach
}

require('lspconfig')['bashls'].setup {
    on_attach = on_attach
}

require('lspconfig')['dotls'].setup {
    on_attach = on_attach
}

require('lspconfig')['dockerls'].setup {
    on_attach = on_attach
}

require('lspconfig')['gopls'].setup {
    on_attach = on_attach
}

require('lspconfig')['graphql'].setup {
    on_attach = on_attach
}

require('lspconfig')['pyright'].setup {
    on_attach = on_attach
}

require('lspconfig')['solargraph'].setup {
    on_attach = on_attach
}

require('lspconfig')['terraformls'].setup {
    on_attach = on_attach
}

require('lspconfig')['vimls'].setup {
    on_attach = on_attach
}

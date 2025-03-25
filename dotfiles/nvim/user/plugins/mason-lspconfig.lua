return {
  "williamboman/mason-lspconfig",
  opts = {
    automatic_installation = true,
    ensure_installed = {
      "awk_ls",        --awk-language-server
      "bashls",        --bash-language-server
      "cssls",         --css-lsp
      "cssmodules_ls", --cssmodules-language-server
      "dockerls",      --dockerfile-language-server
      "dotls",         --dot-language-server
      "gopls",
      "graphql",       --graphql-language-service-cli
      "html",          --html-lsp
      "jsonls",        --json-lsp
      "luau_lsp",      -- luau should cover lua as well?
      --"nginx-language-server",
      "pyright",
      "rust_analyzer", --rust-analyzer
      "taplo",
      "terraformls",   --terraform-ls",
      "tflint",
      "tsserver",      --typescript-language-server
      "yamlls",        --yaml-language-server
    },
  },
}

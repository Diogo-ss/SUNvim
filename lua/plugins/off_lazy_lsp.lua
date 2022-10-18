require('lazy-lsp').setup {
  -- By default all available servers are set up. Exclude unwanted or misbehaving servers.
  excluded_servers = {
    "ccls", "zk",
  },
  -- Default config passed to all servers to specify on_attach callback and other options.
  default_config = {
    flags = {
      debounce_text_changes = 150,
    },
    -- on_attach = on_attach,
    -- capabilities = capabilities,
  },
  -- Override config for specific servers that will passed down to lspconfig setup.
  configs = {
    sumneko_lua = {
      cmd = {"lua-language-server"},
      -- on_attach = on_lua_attach,
      -- capabilities = capabilities,
    },
  },
}

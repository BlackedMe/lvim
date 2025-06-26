require('lspconfig').ruff.setup({
  -- Disable linting in favor of Pyright
  init_options = {
    settings = {
      lint = { enable = false }
    }
  }
})

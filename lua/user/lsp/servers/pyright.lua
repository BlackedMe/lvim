require('lspconfig').pyright.setup({
  settings = {
    pyright = {
      -- Disable hint diagnostics
      capabilities = (function()
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
        return capabilities
      end)(),
    },
    python = {
      analysis = {
        diagnosticMode = "openFilesOnly",
        typeCheckingMode = "off",
        useLibraryCodeForTypes = false
      }
    }
  },
})

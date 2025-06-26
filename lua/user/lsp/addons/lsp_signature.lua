require 'lsp_signature'.setup({
  on_attach = function()
    require "lsp_signature".on_attach({
      bind = true, -- This is mandatory, otherwise border config won't get registered.
      handler_opts = {
        border = "rounded"
      }
    })
  end,
})

lvim.builtin.dap.on_config_done = function(dap)
  dap.adapters.lldb = {
    type = "executable",
    -- change accordingly based on where the extension file is put
    command = "/home/black/.local/codelldb/extension/adapter/codelldb",
    name = "lldb",
  }

  dap.configurations.cpp = {
    {
      name = "Launch",
      type = "lldb",
      request = "launch",
      console = "integratedTerminal",
      -- program = "${fileDirname}/${fileBasenameNoExtension}",
      program = function()
        return vim.fn.input({ prompt = 'Path to executable: ', default = "${fileDirname}/${fileBasenameNoExtension}" })
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
      arg = {},
    },
  }
end

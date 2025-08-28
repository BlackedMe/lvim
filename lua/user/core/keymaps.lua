-- left buffer
lvim.keys.normal_mode['<C-Left>'] = ':bprev <cr>'
-- right buffer
lvim.keys.normal_mode['<C-Right>'] = ':bnext <cr>'
lvim.keys.normal_mode['<C-F>'] = ':lua vim.lsp.buf.code_action() <cr>'
-- debug configurations
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<A-b>', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<A-c>', function() require('dap').clear_breakpoints() end)
vim.keymap.set('n', '<C-A-d>', function() require('dapui').toggle() end)
vim.keymap.set('n', '<A-BS>', function() require('dap').disconnect() end)

-- code_runner configurations
vim.keymap.set('n', '<C-A-n>', ':RunCode<CR>', { noremap = true, silent = false })

-- neogen configurations
vim.keymap.set('n', '<Leader>ng', function() require('neogen').generate() end)

vim.keymap.del("t", "<c-j>")
vim.keymap.del("t", "<c-k>")

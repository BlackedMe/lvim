lvim.builtin.alpha.dashboard.section.header.val = {
  [[                                                                       ]],
  [[                                                                       ]],
  [[                                                                       ]],
  [[  ██████   █████                   █████   █████  ███                  ]],
  [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
  [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
  [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
  [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
  [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
  [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
  [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
  [[                                                                       ]],
  [[                     λ done is better than perfect λ                   ]],
}

lvim.builtin.alpha.dashboard.section.footer.val = require 'alpha.fortune' ()

-- lvim.colorscheme = "gotham"
-- lvim.colorscheme = "tokyonight-night"
-- lvim.colorscheme = "tokyodark"
-- lvim.colorscheme = "everforest"
-- lvim.colorscheme = "gruvbox"
lvim.colorscheme = "neofusion"
-- lvim.colorscheme = "nightfox"

vim.opt.tabstop = 4 -- inserts 4 spaces for a tab
vim.opt.clipboard = "unnamed,unnamedplus" -- allows neovim to access the system clipboard
vim.opt.termguicolors = true -- sets term gui colors
vim.opt.fillchars = { eob = ' ' }


-- reloads the buffer when it is updated externally
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" },
})

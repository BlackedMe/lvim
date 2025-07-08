-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

lvim.plugins = {
  -- gotham
  { 'whatyouhide/vim-gotham' },
  --tokyonight
  { 'folke/tokyonight.nvim' },
  --tokyodark
  { 'tiagovla/tokyodark.nvim' },
  --everforest
  { 'sainnhe/everforest' },
  --gruvbox
  { 'morhetz/gruvbox' },
  --neofusion
  { 'diegoulloao/neofusion.nvim' },
  --nightfox
  { 'EdenEast/nightfox.nvim' },
  --nvim-dap
  { 'mfussenegger/nvim-dap' },
  --lsp_signature
  { 'ray-x/lsp_signature.nvim' },
  --smooth scrolling
  { 'karb94/neoscroll.nvim' },
  --surround
  { 'tpope/vim-surround' },
  --code_runner
  { 'CRAG666/code_runner.nvim' },
  --vimtex
  {
    'lervag/vimtex',
    lazy = false,
    tag = "v2.15",
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end
  },
};

require("user.core")
require("user.lsp")
require("user.utils")

require('code_runner').setup({
  mode = "float",
  filetype = {
    cpp = {
      "cd $dir &&",
      "g++ $fileName",
      "-o $fileNameWithoutExt &&",
      "$dir/$fileNameWithoutExt",
    },
    python = "python -u",
    },
  term = {
    position = "bot",
    size = 5
  },
  float = {
      close_key = "<ESC>",
      -- Window border (see ':h nvim_open_win')
      border = "rounded",

      -- Num from `0 - 1` for measurements
      height = 0.8,
      width = 0.8,
      x = 0.5,
      y = 0.5,

      -- Highlight group for floating window/border (see ':h winhl')
      border_hl = "FloatBorder",
      float_hl = "Normal",

      -- Transparency (see ':h winblend')
      blend = 0,
    },
})

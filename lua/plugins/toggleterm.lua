return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    -- direction = 'horizontal',
    direction = "float",
    open_mapping = [[<c-\>]],
    auto_scroll = false,
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)
  end,
}

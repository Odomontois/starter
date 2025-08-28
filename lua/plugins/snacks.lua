return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>fr", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<leader>fR", LazyVim.pick("oldfiles"), desc = "Recent" },
    {
      "<leader><space>",
      function()
        Snacks.picker.recent({ filter = { cwd = true } })
      end,
      desc = "Recent (cwd)",
    },
  },
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts, {
      picker = {
        sources = {
          explorer = {
            include = {
              ".metals",
            },
          },
        },
      },
    })
  end,
}

return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fr", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    { "<leader>fR", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
    { "<leader><space>", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
  },
}

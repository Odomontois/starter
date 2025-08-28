-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local map = LazyVim.safe_keymap_set
local wk = require("which-key")

local metals_icon = { icon = "", color = "red" }

wk.add({ "<leader>m", group = "Metals", icon = metals_icon })
wk.add({ "<;leader>j", group = "Jujutsu" })

local function toggleSetting(modname, setting)
  return function()
    require(modname).toggle_setting(setting)
  end
end

map("n", "<leader>ma", toggleSetting("metals", "showImplicitArguments"), { desc = "Show Implicit Arguments" })

map("n", "<leader>mi", toggleSetting("metals", "showImplicitConversionsAndClasses"), { desc = "Show Implicit Conversions" })

map("n", "<leader>mn", "<cmd>MetalsNewScalaFile<cr>", { desc = "New Scala File" })

map("n", "<leader>mb", "<cmd>MetalsImportBuild<cr>", { desc = "Import Build" })

map("n", "<leader>mc", "<cmd>split | terminal sbtn compile<cr>", { desc = "sbtn Compile" })

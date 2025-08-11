-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local map = LazyVim.safe_keymap_set
local wk = require("which-key")

wk.add({ "<leader>m", group = "Metals", icon = { icon = "", color = "red" } })
wk.add({ "<;leader>j", group = "Jujutsu" })

local function toggleSetting(modname, setting)
  return function()
    require(modname).toggle_setting(setting)
  end
end

map("n", "<leader>ma", toggleSetting("metals", "showImplicitArguments"), { desc = "Show Implicit Arguments" })

map("n", "<leader>mi", toggleSetting("metals", "showImplicitConversionsAndClasses"), { desc = "Show Implicit Conversions" })

map("n", "<leader>mf", "<cmd>MetalsNewScalaFile<cr>", { desc = "Create scala file" })

map("n", "<leader>ml", toggleSetting("metals", "allowCaptureChecking"), { desc = "Allow Capture Checking" })

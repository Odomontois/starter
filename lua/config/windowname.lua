-- Alleen uitvoeren als we in een tmux-sessie zijn
if not vim.fn.exists("$TMUX") then
  return
end

local group = vim.api.nvim_create_augroup("TmuxWindowName", { clear = true })

-- Functie om de naam van het tmux-venster in te stellen
local function set_tmux_window_name()
  -- Schakel automatisch hernoemen voor dit venster uit
  vim.fn.system("tmux set-window-option -q automatic-rename off")

  -- Haal de mapnaam op en stel de vensternaam in
  local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
  vim.fn.system("tmux rename-window 'nvim " .. dir_name .. "'")
end

-- Functie om de naam van het tmux-venster te herstellen
local function restore_tmux_window_name()
  -- Schakel automatisch hernoemen weer in, zodat de shell de naam kan bepalen
  vim.fn.system("tmux set-window-option -q automatic-rename on")
end

-- Voer de functies uit op de juiste momenten
vim.api.nvim_create_autocmd("VimEnter", {
  group = group,
  callback = set_tmux_window_name,
})

-- Gebruik VimLeavePre, dit is betrouwbaarder dan VimLeave
vim.api.nvim_create_autocmd("VimLeavePre", {
  group = group,
  callback = restore_tmux_window_name,
})

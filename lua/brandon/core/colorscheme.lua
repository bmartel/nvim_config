
vim.cmd("colorscheme one")

local status, _ = pcall(vim.cmd, "colorscheme one")

if not status then
  print("Colorscheme 'one' not found")
end

vim.cmd("colorscheme doom-one")

local status, _ = pcall(vim.cmd, "colorscheme doom-one")

if not status then
	print("Colorscheme 'doom-one' not found")
end

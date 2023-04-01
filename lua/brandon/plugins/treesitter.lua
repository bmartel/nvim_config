local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"dockerfile",
		"go",
		"graphql",
		"html",
		"java",
		"javascript",
		"json",
		"lua",
		"python",
		"regex",
		"rust",
		"scss",
		"tsx",
		"typescript",
		"yaml",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
})

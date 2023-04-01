vim.g.mapleader = " "

local keymap = vim.keymap

-- escape aliases
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")
keymap.set("n", "<C-c>", "<ESC>")

-- highlight
keymap.set("n", "<leader>h", ":nohl<CR>")

-- Files
keymap.set("n", "<leader>rm", ":call delete(expand('%')) \\| bdelete!<CR>")
keymap.set("n", "<leader>mf", ":!touch <C-R>=expand('%:p:h') . '/' <CR>")
keymap.set("n", "<leader>md", ":!mkdir <C-R>=expand('%:p:h') . '/' <CR>")
keymap.set("n", "<leader>ef", ":e <C-R>=expand('%:p:h') . '/' <CR>")

-- Fuzzy Finder
keymap.set("n", "<leader>sf", ":Telescope find_files<CR>")
keymap.set("n", "<leader>sg", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>sc", ":Telescope grep_string<CR>")
keymap.set("n", "<leader>sb", ":Telescope buffers<CR>")
keymap.set("n", "<leader>sh", ":Telescope help_tags<CR>")

-- Search
keymap.set("n", "<leader>ff", "<cmd>:Spectre<CR>", {
	desc = "Open Spectre",
})
keymap.set("n", "<leader>fF", "<cmd>:Spectre open_visual({select_word=true})<CR>", {
	desc = "Search current word",
})
keymap.set("v", "<leader>ff", "<esc><cmd>:Spectre open_visual()<CR>", {
	desc = "Search current word",
})
keymap.set("n", "<leader>fp", "<cmd>:Spectre open_file_search({select_word=true})<CR>", {
	desc = "Search on current file",
})

-- Blocks
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
keymap.set("x", "K", ":move '<-2<CR>gv-gv")
keymap.set("x", "J", ":move '>+1<CR>gv-gv")

-- Terminal
keymap.set("n", "<leader>T", ":terminal<CR>")
keymap.set("t", "<Esc>", "<C-\\><C-n>")
keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h")
keymap.set("t", "<C-w>j", "<C-\\><C-n><C-w>j")
keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k")
keymap.set("t", "<C-w>l", "<C-\\><C-n><C-w>l")

-- Tabs
keymap.set("n", "<leader>tn", ":tabnew<CR>")
keymap.set("n", "<leader>tc", ":tabc<CR>")
keymap.set("n", "<leader>te", ":tabe <C-R>=expand('%:p:h') . '/' <CR>")
keymap.set("n", "<leader>tj", ":tabn<CR>")
keymap.set("n", "<leader>tk", ":tabp<CR>")
keymap.set("n", "<leader>to", ":tabo<CR>")

-- Windows
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-w>m", ":MaximizerToggle!<CR>")

-- Buffers
keymap.set("n", "<C-w>c", ":enew<bar>bd #<CR>")
keymap.set("n", "<leader>c", ":bd<CR>")
keymap.set("n", "<leader>C", ":bd!<CR>")
keymap.set("n", "<leader>ac", ":%bd<CR>")
keymap.set("n", "<leader>oc", ":%bd<CR><C-O>:bd#<CR>")

-- NetRW
keymap.set("n", "<leader>k", ":NvimTreeToggle<CR>")

-- Edit Nvim Config
keymap.set("n", "<leader>ev", ":edit $MYVIMRC<CR>")

-- Insert timestamp
keymap.set("n", "<leader>it", ":put =strftime('%s')<CR>")

-- Abbreviations
vim.cmd.cnoreabbrev({ "Q", "q" })
vim.cmd.cnoreabbrev({ "Q!", "q!" })
vim.cmd.cnoreabbrev({ "Qall!", "qall!" })
vim.cmd.cnoreabbrev({ "Qall", "qall" })
vim.cmd.cnoreabbrev({ "W!", "w!" })
vim.cmd.cnoreabbrev({ "Wq", "wq" })
vim.cmd.cnoreabbrev({ "wQ", "wq" })
vim.cmd.cnoreabbrev({ "WQ", "wq" })
vim.cmd.cnoreabbrev({ "Wa", "wa" })
vim.cmd.cnoreabbrev({ "W", "w" })

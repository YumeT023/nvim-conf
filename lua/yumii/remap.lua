vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- using ctrl + arrow to switch between different panel
vim.keymap.set("n", "<C-Right>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<C-Left>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-Up>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-Down>", "<C-w>j", { silent = true })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : ThePrimeagen > asbjrnHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


-- split
vim.keymap.set("n", "<leader>vs", ":vsplit<cr><C-w>l")
vim.keymap.set("n", "<leader>sp", ":split<cr><C-w>j")

vim.keymap.set("n", "<Up>", ":resize +3<cr>")
vim.keymap.set("n", "<Down>", ":resize -3<cr>")
vim.keymap.set("n", "<Right>", ":vertical resize +3<cr>")
vim.keymap.set("n", "<Left>", ":vertical resize -3<cr>")

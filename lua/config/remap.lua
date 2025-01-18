-- using ctrl + arrow to switch between different panel
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : ThePrimeagen > asbjrnHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- split
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>vs", ":vsplit<cr><C-w>l")
vim.keymap.set("n", "<leader>sp", ":split<cr><C-w>j")

vim.keymap.set("n", "<Up>", ":resize +3<cr>")
vim.keymap.set("n", "<Down>", ":resize -3<cr>")
vim.keymap.set("n", "<Right>", ":vertical resize +3<cr>")
vim.keymap.set("n", "<Left>", ":vertical resize -3<cr>")

-- telescope
vim.keymap.set("n", "<leader>pl", ":Telescope file_browser<cr>",
        { noremap = true })
vim.keymap.set("n", "<leader>pv", ":Telescope file_browser path=%:p:h select_buffer=true<cr>",
        { noremap = true })

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

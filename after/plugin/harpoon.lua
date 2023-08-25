local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local cmd = require("harpoon.cmd-ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>c", cmd.toggle_quick_menu)

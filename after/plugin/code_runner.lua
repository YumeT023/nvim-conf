local runner = require("code_runner")

runner.setup {
  mode = "float",
  filetype = {
    typescript = "tsx",
    javascript = "tsx",
    asm = "nasm"
  },
  float = {
    title = "runner",
    border = "rounded",
    width = 0.5,
    height = 0.8,
    x = 0.5,
    y = 0.5,
  }
}

vim.keymap.set("n", "<leader>go", ":RunFile<cr>")

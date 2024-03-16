local ts = require("telescope")

ts.setup {
  pickers = {
    find_files = {
      hidden = true,
      find_command = {
        "rg",
        "--files",
        "--glob",
        "!{.git/*,.svelte-kit,.next,target/*,node_modules/*,build/*}",
        "--path-separator",
        "/",
      }
    }
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
      dir_icon = "📁",
      depth = 1,
      quiet = true,
      grouped = true,
      mappings = {
        ["i"] = {
          -- custom insert mode mappings
        },
        ["n"] ={
          -- custom normal mode mappings
        },
      },
    },
  },
}

ts.load_extension "file_browser"


-- mapping
vim.keymap.set("n", "<leader>pl", ":Telescope file_browser<cr>",
{ noremap = true })

vim.keymap.set("n", "<leader>pv", ":Telescope file_browser path=%:p:h select_buffer=true<cr>",
{ noremap = true })


local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})


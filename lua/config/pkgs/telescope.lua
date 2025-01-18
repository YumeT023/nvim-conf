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


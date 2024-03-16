require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "query",
    "lua",
    "javascript",
    "typescript",
    "tsx",
    "vue",
    "css",
    "prisma",
    "rust",
    "asm",
  },

  sync_install = true,
  auto_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  indent = {
    enable = true
  }
}

require("nvim-treesitter.parsers").get_parser_configs().asm = {
  install_info = {
    url = "https://github.com/rush-rs/tree-sitter-asm.git",
    files = { "src/parser.c" },
    branch = "main"
  }
}

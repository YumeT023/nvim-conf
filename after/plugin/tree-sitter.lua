require("nvim-treesitter.configs").setup {
  ensure_installed = {
    -- "lua",
    -- "query",
    -- "javascript",
    -- "typescript",
    -- "prisma",
    -- "rust"
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

require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "c",
    "java",
    "javascript",
    "typescript",
    "vim",
    "vimdoc",
    "query",
    "lua",
    "prisma",
    "rust"
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

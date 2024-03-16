local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.nvim_workspace() -- Fix Undefined global 'vim'

local cmp = require('cmp')

cmp.setup({
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }
})

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "W", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
end)

lsp.setup()

-- mason lsp
local conf = require("lspconfig")

require("mason-lspconfig").setup({
  ensure_installed = {
    'tsserver',
    'lua_ls',
    'prismals',
    'html',
    'rust_analyzer',
    'jdtls',
    'tailwindcss',
    'volar'
  },
  handlers = {
    lsp.default_setup,
    rust_analyzer = function()
    end,
    tsserver = function()
      local global_pkg = "C:/Program Files/nodejs/node_modules"
      conf.tsserver.setup {
        filetypes = {"vue", "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
        root_dir = conf.util.root_pattern("package.json"),
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = string.format("%s/%s", global_pkg, "@vue/typescript-plugin"),
              languages = {"vue"}
            }
          }
        }
      }
    end
  }
})

vim.diagnostic.config({
  virtual_text = true
})





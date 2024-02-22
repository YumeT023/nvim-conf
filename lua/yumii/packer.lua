-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    -- or                            , branch = "0.1.x",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

  -- packer

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  use("theprimeagen/harpoon")

  use("rose-pine/neovim")

  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "saadparwaiz1/cmp_luasnip" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },

      -- Snippets
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    }
  }

  use("xiyaowong/transparent.nvim")

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup {
        options = {
          icons_enabled = false,
          component_separators = { left = " • ", right = " • " },
          section_separators = { left = " • ", right = " • " },
        }
      }
    end
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    commit = "fef26b5eeee1dca1699639dd0d76c47f15a45ee6"
  }

  use {
    "rush-rs/tree-sitter-asm"
  }

  use("CRAG666/code_runner.nvim")
  use("gsuuon/note.nvim")

  use({
    "olivercederborg/poimandres.nvim",
    require("poimandres").setup {
      disable_italics = true
    }
  })

  use("projekt0n/github-nvim-theme")

  use {
    "Mofiqul/vscode.nvim",
    require("vscode").setup {
      disable_italics = true
    }
  }
end)

return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { { "nvim-lua/plenary.nvim" } }
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	},
	{
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup { icons = false }
		end
	},
	"theprimeagen/harpoon",
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
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
	},
	{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	},
	{
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
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	"rush-rs/tree-sitter-asm",
	"CRAG666/code_runner.nvim",
	"gsuuon/note.nvim",
	{
		"olivercederborg/poimandres.nvim",
		config = function()
			require("poimandres").setup {
				disable_italics = true
			}
		end
	},
  "projekt0n/github-nvim-theme"
}

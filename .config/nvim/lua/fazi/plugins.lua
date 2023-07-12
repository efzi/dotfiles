return {
	-- the colorscheme should be available when starting Neovim
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("tokyonight").setup({
				style = "night",
			})
			vim.cmd([[colorscheme tokyonight]])
		end,
	},

	{
		"numToStr/Comment.nvim",
		opts = {}, -- commenting stuff
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("fazi.config.nvim-tree")
		end,
	},
	{ "nvim-tree/nvim-web-devicons" },
	{ "nvim-lua/plenary.nvim" }, -- common utils
	{
		"nvim-lualine/lualine.nvim", --lualine
		config = function()
			require("lualine").setup()
		end,
	},
	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("fazi.config.telescope")
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		cond = function()
			return vim.fn.executable("make") == 1
		end,
	},
	-- autocompletion
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("fazi.config.cmp")
		end,
	}, -- completion plugin
	{ "hrsh7th/cmp-buffer" }, -- source for text in buffer
	{ "hrsh7th/cmp-path" }, -- source for file system paths
	{ "hrsh7th/cmp-nvim-lsp" },
	-- snippets
	{ "L3MON4D3/LuaSnip" }, -- snippet engine
	{ "saadparwaiz1/cmp_luasnip" }, -- for autocompletion
	{ "rafamadriz/friendly-snippets" }, -- useful snippets
	-- LSP stuff
	{ "onsails/lspkind-nvim" },
	-- in charge of managing lsp servers, linters & formatters
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("fazi.config.lsp")
		end,
	},
	{
		"glepnir/lspsaga.nvim",
		config = function()
			require("lspsaga").setup()
		end,
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("fazi.config.null-ls")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("fazi.config.treesitter")
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"windwp/nvim-ts-autotag",
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
}

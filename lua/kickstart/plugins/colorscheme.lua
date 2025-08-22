return {
	{ -- You can easily change to a different colorscheme.
		-- Change the name of the colorscheme plugin below, and then
		-- change the command in the config to whatever the name of that colorscheme is.
		--
		-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
		"folke/tokyonight.nvim",
		-- priority = 1000, -- Make sure to load this before all the other start plugins.
		-- config = function()
		-- 	---@diagnostic disable-next-line: missing-fields
		-- 	require("tokyonight").setup({
		-- 		styles = {
		-- 			comments = { italic = false }, -- Disable italics in comments
		-- 		},
		-- 	})
		--
		-- 	-- Load the colorscheme here.
		-- 	-- Like many other themes, this one has different styles, and you could load
		-- 	-- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
		-- 	vim.cmd.colorscheme("tokyonight-night")
		-- end,
	},
	{ "ellisonleao/gruvbox.nvim" },
	{ "rebelot/kanagawa.nvim" },
	{ "catppuccin/nvim", name = "catppuccin", lazy = false },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "sainnhe/everforest" },
  {"mhartington/oceanic-next"},
	{
		"nyoom-engineering/oxocarbon.nvim",
	},
	{
		"scottmckendry/cyberdream.nvim",
	},
	{
		"Tsuzat/NeoSolarized.nvim",
	},
	{
		"xero/miasma.nvim",
	},
	{
		"ramojus/mellifluous.nvim",

		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	vim.cmd("colorscheme mellifluous")
		-- end,
	},
	{
		'f4z3r/gruvbox-material.nvim',

		lazy = false,
		priority = 1000,
		config = function()
			require("gruvbox-material").setup({
				italics = true, -- enable italics in general
				contrast = "hard", -- set contrast, can be any of "hard", "medium", "soft"
				comments = {
					italics = true, -- enable italic comments
				},
				background = {
					transparent = false, -- set the background to be opaque
				},
				float = {
					force_background = false, -- set to true to force backgrounds on floats even when
					-- background.transparent is set
					background_color = nil, -- set color for float backgrounds. If nil, uses the default color set
					-- by the color scheme
				},
				signs = {
					force_background = false, -- set to true to force backgrounds on signs even when
					-- background.transparent is set
					background_color = nil, -- set color for sign backgrounds. If nil, uses the default color set
					-- by the color scheme
				},
				customize = nil, -- customize the theme in any way you desire, see below what this
				-- configuration accepts
			})
			vim.cmd("colorscheme gruvbox-material")
		end,
	},
	{ "Everblush/nvim", name = "everblush" },
}
-- vim: ts=2 sts=2 sw=2 et

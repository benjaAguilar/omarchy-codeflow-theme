return {
	{
		"navarasu/onedark.nvim",
		config = function()
			require("onedark_vivid").setup({})
			vim.cmd([[colorscheme onedark_vivid]])
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "onedark_vivid",
		},
	},
}

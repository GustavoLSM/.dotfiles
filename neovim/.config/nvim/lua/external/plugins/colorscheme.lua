return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			style = "deep",
			transparent = true,
			term_colors = true
		})
		vim.cmd("colorscheme onedark")
	end
}
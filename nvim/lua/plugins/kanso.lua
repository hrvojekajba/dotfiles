return {
	"webhooked/kanso.nvim",
	name = "kanso",
	priority = 1000,
	config = function()
		require("kanso").setup({
			bold = true,
			italics = true,
			undercurl = true,
			commentStyle = { italic = true},
			transparent = true,
		})
	end,
}

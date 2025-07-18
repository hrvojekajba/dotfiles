return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	enabled = true,
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			indent = { enable = true},
		})
	end
}

return {
	"2nthony/vitesse.nvim",
	dependencies = {
		"tjdevries/colorbuddy.nvim"
	},
	lazy = false,
	priority = 1000,
	config = function()
		require("vitesse").setup {
			transparent_background = true,
		}
	end,
}

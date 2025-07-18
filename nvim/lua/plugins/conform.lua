return {
	"stevearc/conform.nvim",
	lazy = false,
	config = function()
		require("conform").setup({
			javascript = { "prettier" },
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}

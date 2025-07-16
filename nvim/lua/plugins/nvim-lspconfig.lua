return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable({
			"gopls",
			"clangd",
			"cssls",
			"emmet_language_server",
			"lua_ls",
			"ts_ls",
			"basedpyright",
			"rust_analyzer",
		})
	end,
}

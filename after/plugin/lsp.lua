local lsp = require('lspconfig').util.default_config
lsp.capabilities = vim.tbl_deep_extend(
	'force',
	lsp.capabilities,
	require('cmp_nvim_lsp').default_capabilities()
)

require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here
	-- with the ones you want to install
	ensure_installed = {'lua_ls', 'rust_analyzer', 'clangd', 'pyright'},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	}
})


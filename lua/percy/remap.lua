vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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

local cmp = require('cmp')

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- Trigger completion manually
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate suggestions
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),

        -- Close menu
        ['<C-e>'] = cmp.mapping.abort(),
    }),

    sources = {
        { name = 'nvim_lsp' },
    },
})


require('nvim-treesitter').setup( {
	ensure_installed = {"vimdoc", "c", "lua", "javascript", "typescript", "rust"},

	sync_install = false,

	auto_install = true,

	highlight = { -- Fixed spelling here
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})

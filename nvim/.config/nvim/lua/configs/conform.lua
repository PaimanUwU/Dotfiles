local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		java = { "google-java-format" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
    xml = { "xmlformatter", "xmllint" },
    jsp = { "prettier" },
	},

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 750,
		lsp_fallback = true,
	},
}

require("conform").setup(options)

return options

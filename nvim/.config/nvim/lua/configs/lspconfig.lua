-- Load NvChad defaults
require("nvchad.configs.lspconfig").defaults()

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "html", "cssls", "jdtls", "gopls" }

for _, lsp in ipairs(servers) do
	local config = {
		on_attach = function(client, bufnr)
			-- Disable LSP formatting for these specific servers
			local disable_lsp_format = { "html", "cssls", "jdtls" }

			for _, name in ipairs(disable_lsp_format) do
				if lsp == name then
					client.server_capabilities.documentFormattingProvider = false
					client.server_capabilities.documentRangeFormattingProvider = false
				end
			end

			on_attach(client, bufnr)
		end,
		on_init = on_init,
		capabilities = capabilities,
	}

	-- Your existing jdtls logic...
	if lsp == "jdtls" then
		config.flags = { debounce_text_changes = 1000 }
		config.root_dir = lspconfig.util.root_pattern("pom.xml", ".git")
	end

	lspconfig[lsp].setup(config)
end

-- Load NvChad defaults
require("nvchad.configs.lspconfig").defaults()

local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lsp_configs = require("lspconfig.configs")

-- Add jdtls to your server list
local servers = { "html", "cssls", "jdtls" }

for _, lsp in ipairs(servers) do
  if lsp_configs[lsp] then
    local config = {
      on_attach = on_attach,
      on_init = on_init,
      capabilities = capabilities,
    }

    -- Apply "Safe Mode" settings specifically for Java to prevent freezing
    if lsp == "jdtls" then
      config.flags = {
        debounce_text_changes = 1000, -- Wait 1 second after typing before processing
      }
      config.root_dir = require("lspconfig").util.root_pattern("pom.xml", ".git")
    end

    lsp_configs[lsp].setup(config)
  end
end

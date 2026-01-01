local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("servers.lua_ls")(capabilities)
require("servers.pyright")(capabilities)
require("servers.ts_ls")(capabilities)
require("servers.clojure_lsp")(capabilities)

require("servers.efm-langserver")(capabilities)

vim.lsp.enable({
	"lua_ls",
	"pyright",
	"ts_ls",
	"clojure_lsp",
	"bashls",
	"efm",
})

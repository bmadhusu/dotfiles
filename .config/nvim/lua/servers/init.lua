local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("utils.lsp").on_attach
local lspconfig = require("lspconfig")

require("servers.lua_ls")(capabilities)
require("servers.pyright")(capabilities)
require("servers.ts_ls")(capabilities)

require("servers.efm-langserver")(capabilities)

require("nvim-lsp-installer").setup {}
require("mason").setup()
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.clangd.setup{}
-- require'lspconfig'.java_language_server.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.pyre.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.lua_ls.setup {}
-- require'lspconfig'.millet.setup{}
require'lspconfig'.sqlls.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.golangci_lint_ls.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.jdtls.setup{}

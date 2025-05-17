require("nvim-lsp-installer").setup {}
require("mason").setup()
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.sourcekit.setup{}
require'lspconfig'.clangd.setup{}
-- require'lspconfig'.java_language_server.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.pyre.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.cssls.setup{}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.lua_ls.setup {}
-- require'lspconfig'.millet.setup{}
require'lspconfig'.sqlls.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.golangci_lint_ls.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.biome.setup{}
require'lspconfig'.gdscript.setup{
  filetypes = { "gd", "gdscript", "gdscript3" },
}

-- local port = os.getenv('GDScript_Port') or '6005'
-- local cmd = {'ncat', '127.0.0.1', port}
-- local pipe = [[\\.\pipe\godot.pipe]]
--
-- vim.lsp.start({
--   name = 'Godot',
--   cmd = cmd,
--   root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = true })[1]),
--   on_attach = function(client, bufnr)
--     vim.api.nvim_command([[echo serverstart(']] .. pipe .. [[')]])
--   end
-- })

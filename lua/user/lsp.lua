-- require("nvim-lsp-installer").setup {}
require("mason").setup()

-- vim.lsp.rust_analyzer.setup({})
-- vim.lsp.enable('pyright')
vim.lsp.enable('pylsp')
vim.lsp.enable('ruff')

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client == nil then
      return
    end
    if client.name == 'ruff' then
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end
  end,
  desc = 'LSP: Disable hover capability from Ruff',
})

vim.lsp.config('pyright', {
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },
})

-- vim.lsp.enable('pyright')

-- vim.lsp.enable('pyre')
-- vim.lsp.enable('pyrefly')
vim.lsp.enable('lua_ls')
vim.lsp.enable('vimls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')
-- require'lspconfig'.rust_analyzer.setup{}
-- require'lspconfig'.sourcekit.setup{}
-- require'lspconfig'.clangd.setup{}
-- require'lspconfig'.java_language_server.setup{}
-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.pyre.setup{}
-- require'lspconfig'.tsserver.setup{}
-- require'lspconfig'.cssls.setup{}
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- require'lspconfig'.html.setup {
--   capabilities = capabilities,
-- }
-- require'lspconfig'.lua_ls.setup {}
-- require'lspconfig'.millet.setup{}
-- require'lspconfig'.sqlls.setup{}
-- require'lspconfig'.bashls.setup{}
-- require'lspconfig'.vimls.setup{}
-- require'lspconfig'.golangci_lint_ls.setup{}
-- require'lspconfig'.gopls.setup{}
-- require'lspconfig'.jdtls.setup{}
-- require'lspconfig'.biome.setup{}

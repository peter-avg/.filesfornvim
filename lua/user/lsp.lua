require("mason").setup()

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

vim.lsp.enable('lua_ls')
vim.lsp.enable('vimls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')
vim.lsp.enable('cmake')

vim.api.nvim_create_autocmd("FileType", {
  pattern = "erm",
  callback = function()
    vim.lsp.start({
      name = "erminia-lsp",
      cmd = { "~/Coding/Personal/erminia/target/release/erminia-lsp" },
      root_dir = vim.fs.dirname(
        vim.fs.find({ ".git", "*.erm" }, { upward = true })[1]
      ),
    })
  end,
})

vim.filetype.add({
  extension = { erm = "erm" },
})

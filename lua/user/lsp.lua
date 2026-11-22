vim.lsp.enable('basedpyright')
vim.lsp.config("ruff", {})
vim.lsp.enable("ruff")

-- vim.api.nvim_create_autocmd("LspAttach", {
--   group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
--   callback = function(args)
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     if client == nil then
--       return
--     end
--     if client.name == 'ruff' then
--       -- Disable hover in favor of Pyright
--       client.server_capabilities.hoverProvider = false
--     end
--   end,
--   desc = 'LSP: Disable hover capability from Ruff',
-- })
--
-- vim.lsp.config('pyright', {
--   settings = {
--     pyright = {
--       -- Using Ruff's import organizer
--       disableOrganizeImports = true,
--     },
--     python = {
--       analysis = {
--         -- Ignore all files for analysis to exclusively use Ruff for linting
--         ignore = { '*' },
--       },
--     },
--   },
-- })

vim.lsp.enable('lua_ls')
vim.lsp.enable('vimls')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')

vim.filetype.add({
  extension = {
    tpp = "cpp"
  }
})

vim.lsp.enable('cmake')
vim.api.nvim_create_autocmd("FileType", {
  pattern = "mlir",
  callback = function()
    vim.lsp.start({
      name = "mlir-lsp-server",
      cmd = { "mlir-lsp-server" },
      root_dir = vim.fs.dirname(
        vim.fs.find({ ".git" }, { upward = true })[1]
      ) or vim.fn.getcwd(),
    })
  end,
})

local lint = require("lint")
lint.linters_by_ft = {
  python = { "mypy" },
}

-- Use the project's venv mypy (equivalent of importStrategy: fromEnvironment)
local mypy = lint.linters.mypy
mypy.cmd = function()
  local venv_mypy = vim.fn.getcwd() .. "/.venv/bin/mypy"
  return vim.fn.executable(venv_mypy) == 1 and venv_mypy or "mypy"
end

vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
  callback = function() lint.try_lint() end,
})


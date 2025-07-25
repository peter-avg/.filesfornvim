local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.git_files, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
keymap.set('n', '<leader>fs', builtin.live_grep, {})
keymap.set('n', '<leader>gd', builtin.lsp_definitions, {})
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })

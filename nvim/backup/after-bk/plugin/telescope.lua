local builtin = require('telescope.builtin')
vim.keymap.set('n', ';f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})

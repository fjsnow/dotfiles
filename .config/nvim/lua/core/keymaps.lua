local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]

-- Disable arrow keys
vim.api.nvim_set_keymap('i', '<Up>', '<C-o>' .. msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Down>', '<C-o>' .. msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Left>', '<C-o>' .. msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<Right>', '<C-o>' .. msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Up>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Down>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Left>', msg, { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<Right>', msg, { noremap = true, silent = false })

-- Keybindings for diagnostics in Neovim
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostic message" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = "Go to previous diagnostic" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Go to next diagnostic" })


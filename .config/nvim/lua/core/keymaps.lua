-- Neotree
vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>")

-- Buffers
vim.api.nvim_set_keymap("n", "<leader>q", ":bdelete<CR>:bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>[", ":bp<CR>", { noremap = true, silent = true }) -- Next buffer
vim.api.nvim_set_keymap("n", "<leader>]", ":bn<CR>", { noremap = true, silent = true }) -- Previous buffer

-- Keybindings for diagnostics in Neovim
vim.keymap.set(
    "n",
    "<leader>e",
    vim.diagnostic.open_float,
    { noremap = true, silent = true, desc = "Show diagnostic message" }
)
vim.keymap.set(
    "n",
    "[d",
    vim.diagnostic.goto_prev,
    { noremap = true, silent = true, desc = "Go to previous diagnostic" }
)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Go to next diagnostic" })

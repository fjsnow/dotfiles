return {
    "echasnovski/mini.nvim",
    version = "*",
    config = function()
        require("mini.pick").setup()
        vim.keymap.set("n", "<leader>pf", function()
            MiniPick.builtin.files()
        end, { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>pg", function()
            MiniPick.builtin.grep_live()
        end, { noremap = true, silent = true })
    end,
}

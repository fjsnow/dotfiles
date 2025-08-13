return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("gitsigns").setup()
            vim.api.nvim_create_user_command("Gb", "Gitsigns blame", {})
            vim.api.nvim_create_user_command("Gbl", "Gitsigns blame_line", {})
        end,
    },
    {
        "akinsho/git-conflict.nvim",
        ft = { "gitrebase", "gitcommit", "diff" },
        config = true,
    },
}

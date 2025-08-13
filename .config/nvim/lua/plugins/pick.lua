return {
    "echasnovski/mini.nvim",
    version = "*",
    keys = {
        {
            "<leader>pf",
            function()
                require("mini.pick").builtin.files()
            end,
            desc = "Find Files (Mini)",
        },
        {
            "<leader>pg",
            function()
                require("mini.pick").builtin.grep_live()
            end,
            desc = "Live Grep (Mini)",
        },
    },
    config = function()
        require("mini.pick").setup()
    end,
}

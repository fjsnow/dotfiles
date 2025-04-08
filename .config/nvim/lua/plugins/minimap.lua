return {
    {
        "Isrothy/neominimap.nvim",
        version = "v3.*.*",
        enabled = true,
        lazy = false,
        keys = {
            { "<leader>m", "<cmd>Neominimap toggle<cr>", desc = "Toggle global minimap" },
        },
        init = function()
            vim.opt.wrap = false
            vim.opt.sidescrolloff = 32
            vim.g.neominimap = {
                auto_enable = false,
                click = {
                    enabled = true,
                    auto_switch_focus = false,
                },
                git = {
                    enabled = false,
                },
            }
        end,
    },
}

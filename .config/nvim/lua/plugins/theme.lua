return {
    {
        "ribru17/bamboo.nvim",
        priority = 1000,
        enabled = false,
        config = function()
            require("bamboo").setup()
            vim.cmd("colorscheme bamboo")
        end,
    },
    {
        "comfysage/evergarden",
        priority = 1000,
        enabled = true,
        opts = {
            theme = {
                variant = "fall",
                accent = "green",
            },
            editor = {
                transparent_background = false,
                sign = { color = "none" },
                float = {
                    color = "mantle",
                    invert_border = false,
                },
                completion = {
                    color = "surface0",
                },
            },
        },
        config = function()
            vim.cmd("colorscheme evergarden")
        end,
    },
}

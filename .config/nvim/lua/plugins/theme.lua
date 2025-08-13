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
        event = "VimEnter",
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
                    solid_border = false,
                },
                completion = {
                    color = "surface0",
                },
            },
            integrations = {
                cmp = true,
                gitsigns = true,
                indent_blankline = { enable = true, scope_color = "green" },
                mini = {
                    enable = true,
                    animate = false,
                    clue = false,
                    completion = false,
                    cursorword = false,
                    deps = false,
                    diff = false,
                    files = false,
                    hipatterns = false,
                    icons = false,
                    indentscope = false,
                    jump = false,
                    jump2d = false,
                    map = false,
                    notify = false,
                    operators = false,
                    pick = true,
                    starters = false,
                    statusline = false,
                    surround = false,
                    tabline = false,
                    test = false,
                    trailspace = false,
                },
                neotree = true,
                rainbow_delimiters = true,
            },
        },
        config = function()
            vim.cmd("colorscheme evergarden")
        end,
    },
}

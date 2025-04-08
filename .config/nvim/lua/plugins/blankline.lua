vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#273035" })

return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup({
            scope = { enabled = false },
            indent = {
                char = "┆",
                highlight = "IndentBlanklineChar",
            },
        })
    end,
}

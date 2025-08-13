return {
    "ethanholz/nvim-lastplace",
    event = "BufReadPost",
    config = function()
        require("nvim-lastplace").setup({})
    end,
}

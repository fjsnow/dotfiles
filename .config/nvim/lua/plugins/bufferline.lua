-- In your plugin configuration file (e.g., `plugins.lua`)

return {
    -- Bufferline plugin
    {
        "akinsho/bufferline.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" }, -- for file icons
        config = function()
            require("bufferline").setup({
                options = {
                    numbers = "none", -- Optionally display buffer numbers, can be "ordinal", "relative", "both"
                    close_command = "bdelete! %d", -- Custom command for closing buffers
                    right_mouse_command = "bdelete! %d", -- Right-click to delete buffers
                    left_mouse_command = "buffer %d", -- Left-click to switch buffers
                    buffer_close_icon = "", -- Icon for closing buffers
                    modified_icon = "●", -- Icon for modified buffers
                    close_icon = "", -- Icon to close the buffer
                    left_trunc_marker = "", -- Marker for truncated buffers
                    right_trunc_marker = "", -- Marker for truncated buffers
                },
            })
        end,
    },
}

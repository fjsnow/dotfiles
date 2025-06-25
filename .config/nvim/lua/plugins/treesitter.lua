return {
    {
        "Glench/Vim-Jinja2-Syntax",
        ft = "jinja",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = { "rayliwell/tree-sitter-rstml" },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                modules = {},
                sync_install = false,
                auto_install = true,
                ignore_install = {},
                highlight = { enable = true },
                indent = { enable = true },
                ensure_installed = {
                    "bash",
                    "c",
                    "diff",
                    "html",
                    "javascript",
                    "jsdoc",
                    "json",
                    "jsonc",
                    "lua",
                    "luadoc",
                    "luap",
                    "markdown",
                    "markdown_inline",
                    "printf",
                    "python",
                    "query",
                    "regex",
                    "rust",
                    "toml",
                    "tsx",
                    "typescript",
                    "vim",
                    "vimdoc",
                    "xml",
                    "yaml",
                    "jinja",
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-space>",
                        node_incremental = "<C-space>",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    },
                },
                textobjects = {
                    move = {
                        enable = true,
                        goto_next_start = {
                            ["]f"] = "@function.outer",
                            ["]c"] = "@class.outer",
                            ["]a"] = "@parameter.inner",
                        },
                        goto_next_end = {
                            ["]F"] = "@function.outer",
                            ["]C"] = "@class.outer",
                            ["]A"] = "@parameter.inner",
                        },
                        goto_previous_start = {
                            ["[f"] = "@function.outer",
                            ["[c"] = "@class.outer",
                            ["[a"] = "@parameter.inner",
                        },
                        goto_previous_end = {
                            ["[F"] = "@function.outer",
                            ["[C"] = "@class.outer",
                            ["[A"] = "@parameter.inner",
                        },
                    },
                },
            })

            local hl = vim.api.nvim_set_hl
            hl(0, "TSFunction", { fg = "#ff6c6b" })
            hl(0, "TSClass", { fg = "#ECBE7B" })
            hl(0, "TSParameter", { fg = "#51afef" })
            hl(0, "TSVariable", { fg = "#98be65" })
        end,
    },
    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            require("rainbow-delimiters.setup").setup({})
        end,
    },
}

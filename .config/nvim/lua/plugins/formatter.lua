return {
    {
        "mhartington/formatter.nvim",
        config = function()
            local prettier = function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
                    stdin = true,
                    cwd = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":h"),
                }
            end

            local stylua = function()
                return {
                    exe = "stylua",
                    args = { "--indent-type", "Spaces", "-" },
                    stdin = true,
                }
            end

            local autopep8 = function()
                return {
                    exe = "autopep8",
                    args = { "- --ignore=E302 " },
                    stdin = true,
                }
            end

            local rustfmt = function()
                return {
                    exe = "rustfmt",
                    args = { "+nightly --edition 2021" },
                    stdin = true,
                }
            end

            require("formatter").setup({
                logging = true,
                log_level = vim.log.levels.OFF,
                filetype = {
                    python = { autopep8 },
                    css = { prettier },
                    javascript = { prettier },
                    javascriptreact = { prettier },
                    typescript = { prettier },
                    typescriptreact = { prettier },
                    astro = { prettier },
                    json = { prettier },
                    svg = { require("formatter.filetypes.html").htmlbeautifier },
                    lua = { stylua },
                    rust = { rustfmt },
                    ["*"] = {
                        require("formatter.filetypes.any").remove_trailing_whitespace,
                    },
                },
            })

            local augroup = vim.api.nvim_create_augroup("__formatter__", { clear = true })
            vim.api.nvim_create_autocmd("BufWritePost", {
                group = augroup,
                command = ":FormatWrite",
            })
        end,
    },
}

return {
    "mhartington/formatter.nvim",
    config = function()
        local prettier = function()
            local filepath = vim.api.nvim_buf_get_name(0)
            local args = {}

            if filepath:match("%.tera$") then
                table.insert(args, "--parser")
                table.insert(args, "html")
            end

            table.insert(args, "--stdin-filepath")
            table.insert(args, filepath)

            return {
                exe = "prettier",
                args = args,
                stdin = true,
                cwd = vim.fn.fnamemodify(filepath, ":h"),
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

        local google_java_format = function()
            return {
                exe = "google-java-format",
                args = { "--aosp", "-" },
                stdin = true,
            }
        end

        require("formatter").setup({
            logging = true,
            log_level = vim.log.levels.OFF,
            filetype = {
                python = { autopep8 },
                html = { prettier },
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
                java = { google_java_format },
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
}

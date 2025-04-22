return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-buffer",
        "L3MON4D3/LuaSnip",
        "onsails/lspkind.nvim",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        cmp.setup({
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
            }, {
                { name = "buffer" },
            }),
            completion = {
                completeopt = "menu,menuone,noinsert",
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            window = {
                completion = cmp.config.window.bordered({
                    border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }, -- Square border
                }),
                documentation = cmp.config.window.bordered({
                    border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }, -- Square border
                }),
            },
            formatting = {
                format = lspkind.cmp_format({
                    mode = "symbol",
                    maxwidth = {
                        menu = 50,
                        abbr = 50,
                    },
                    ellipsis_char = "...",
                    show_labelDetails = true,
                    before = function(entry, vim_item)
                        return vim_item
                    end,
                }),
            },
        })
    end,
}

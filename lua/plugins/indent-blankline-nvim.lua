-- Indentation guides
return {
    -- https://github.com/lukas-reineke/indent-blankline.nvim
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = 'VeryLazy',
    config = function()
        require("ibl").setup({
            scope = {
                enabled = true,
                show_exact_scope = true,
                show_start = true,
                include = {
                    node_type = {
                        lua = {
                            "table_constructor",
                        },
                        python = {
                            "block",
                            "chunk",
                            "module"
                        },
                    },
                },
                -- show_start = true,
                exclude = {
                    language = {
                        -- 'lua',
                        'terminal',
                        'telescope',
                        "help",
                        "dashboard",
                        "NvimTree",
                    },
                },
                -- buftype_exclude = { "terminal", "nofile", 'FTerm', 'alpha' },
            },
            indent = {
                smart_indent_cap = true,
            },
            whitespace = {
                -- show_current_context = true,
                highlight = { "Function", "Label", 'NonText' }
            }
        })
    end,
}

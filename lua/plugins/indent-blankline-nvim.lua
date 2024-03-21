-- Indentation guides
return {
    -- https://github.com/lukas-reineke/indent-blankline.nvim
    "lukas-reineke/indent-blankline.nvim",
    enable = false,
    event = 'VeryLazy',
    main = "ibl",
    opts = {
        enabled = true,
        indent = {
            char = '|',
        },
    },
}

-- Display LSP-based breadcrumbs
return {
    -- https://github.com/utilyre/barbecue.nvim
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    theme = "tokyonight",
    dependencies = {
        -- https://github.com/SmiteshP/nvim-navic
        "SmiteshP/nvim-navic",
        -- https://github.com/nvim-tree/nvim-web-devicons
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
        -- configurations go here
    },
}

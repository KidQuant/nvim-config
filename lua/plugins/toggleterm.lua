return
{
    'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            open_mapping = [[<c-\>]],
            shade_filetypes = {},
            hide_numbers = true,
            direction = "float",
            close_on_exit = true,
            shell = vim.o.shell,
        },
}

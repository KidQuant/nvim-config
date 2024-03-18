return
{
    'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            direction = "float",
            close_on_exit = true,
            shell = vim.o.shell,
        },
}

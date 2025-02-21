-- plugin for vimtex
return {
    "lervag/vimtex",
    ft = { "tex", "cls" },
    init = function()
        -- for MacOS
        vim.g['vimtex_view_method'] = 'skim'
        vim.g['vimtex_quickfix_mode'] = 0
        vim.g['vimtex_mappings_enabled'] = 1
        vim.g['tex_flavor'] = 'latex'
        vim.g['tex_indent_items'] = 0
        vim.g['vimtex_context_pdf_viewer'] = 'skim'
        vim.g['vimtex_format_enabled'] = 0
        vim.g['vimtex_log_ignore'] = ({
            'Underfull',
            'Overfull',
            'specifier changed to',
            'Token not allowed in a PDF string',
        })
    end,
}

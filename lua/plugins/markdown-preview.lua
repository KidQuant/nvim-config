return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreivewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
}

return {
	"SirVer/ultisnips",
	lazy = false, -- IMPORTANT: must be on runtimepath at startup for pythonx/UltiSnips
	dependencies = {
		"honza/vim-snippets",
	},
	init = function()
		vim.g.UltiSnipsSnippetDirectories = { "UltiSnips" }

		-- avoid <Tab> conflicts with cmp
		vim.g.UltiSnipsExpandTrigger = "<C-l>"
		vim.g.UltiSnipsJumpForwardTrigger = "<C-j>"
		vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
	end,
}

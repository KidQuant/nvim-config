return {
	"folke/which-key.nvim",
	keys = { "<leader>" },
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>s", group = "Screen" },
			{ "<leader>t", group = "Tab Management" },
			{ "<leader>q", group = "Quick Fix" },
			{ "<leader>f", group = "Telescope" },
			{ "<leader>g", group = "Lsp" },
			{ "<leader>d", group = "Debugging" },
			{ "<leader>b", group = "Breakpoints" },
			{ "<leader>c", group = "Diff" },
			{ "<leader>h", group = "Harpoon" },
		})
	end,
}

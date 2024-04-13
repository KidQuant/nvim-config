-- General purpose linters
return {
	-- https://github.com/mfussenegger/nvim-lint
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		-- Define a table of linters for each filetype (not extension).
		-- Additional linters can be found here: https://github.com/mfussenegger/nvim-lint#available-linters
		local lint = require("lint")
		lint.linters_by_ft = {
			python = {
				"ruff",
				-- 'flake8',
				-- 'mypy',
				-- 'pylint',
			},
			javascript = {
				"eslint_d",
			},
			typescript = {
				"eslint_d",
			},
		}
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		-- Automatically run linters after saving.  Use "InsertLeave" for more aggressive linting.
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			-- Only run linter for the following extensions. Remove this to always run.
			group = lint_augroup,
			-- pattern = { "*.py", "*.cpp", "*.js", "*.ts" },
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}

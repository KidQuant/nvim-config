-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- This has to be set before initializing lazy
vim.g.mapleader = " "

-- enables relative numbers
vim.wo.relativenumber = true

vim.opt.textwidth = 100

-- Initialize lazy with dynamic loading of anything in the plugins directory
require("lazy").setup("plugins", {
	change_detection = {
		enabled = true, -- automatically check for config file changes and reload the ui
		notify = false, -- turn off notifications whenever plugin changes are made
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "tex",
	command = "setlocal complete=",
})

vim.cmd([[
  let g:vimtex_view_reverse_search_edit_cmd = 'nvim --headless --noplugin -u NONE +"call cursor(@line,1)" +normal! zz'
]])

-- These modules are not loaded by lazy
require("core.options")
require("core.keymaps")

vim.g.python3_host_prog = "/opt/miniconda3/bin/python3"

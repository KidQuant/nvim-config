local ls = require("luasnip")

-- Load Lua snippets from ~/.config/nvim/lua/snippets
require("luasnip.loaders.from_lua").lazy_load({
	paths = vim.fn.expand("~/.config/nvim/lua/snippets"),
})

ls.config.set_config({
	history = true,
	updateevents = "TextChanged,TextChangedI",
})

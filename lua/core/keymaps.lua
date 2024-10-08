-- Set leader key to space
vim.g.mapleader = " "

local opts = { noremap = true }
local keymap = vim.keymap

-- twilight
vim.api.nvim_set_keymap("n", "tk", ":blast<enter>", { noremap = false })

-- General keymaps
keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode" }) -- exit insert mode with jk

keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "save and quit" }) -- save and quit
keymap.set("n", "<leader>qq", ":q!<CR>", { desc = "quit without saving" }) -- quit without saving
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "save" }) -- save
keymap.set("n", "gx", ":!open <c-r><c-a><CR>", { desc = "open URL under cursor" }) -- open URL under cursor

-- Move text up and down
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts) -- moves code down in visual mode
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts) -- moves code up in visual mode
keymap.set("v", "p", '"_dP', opts)
--
-- Split window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make split window equal width" }) -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "close split window" }) -- close split window
keymap.set("n", "<leader>sj", "<C-w>-", { desc = "make split window height starters" }) -- make split window height shorter
keymap.set("n", "<leader>sk", "<C-w>+", { desc = "make split windows height taller" }) -- make split windows height taller
-- keymap.set("n", "<leader>sl", "<C-w>>5")    -- make split windows width bigger
-- keymap.set("n", "<leader>sh", "<C-w><5")    -- make split windows width smaller

-- Window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- navigate to the window on the left
keymap.set("n", "<C-l>", "<C-w>l", opts) -- navigate to the window on the right
keymap.set("n", "<C-j>", "<C-w>j", opts) -- navigate to the window below
keymap.set("n", "<C-k>", "<C-w>k", opts) -- navigate to the window above

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", opts) -- resizes window up
keymap.set("n", "<C-Down>", ":resize +<CR>", opts) -- resizes window down
keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", opts) -- resizes window left
keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", opts) -- resizes widow right

-- Tab management
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "opens a new tab" }) -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "closes a tab" }) -- close a tab
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "next tab" }) -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "previous tab" }) -- previous tab

-- Diff keymaps
keymap.set("n", "<leader>cc", ":diffput<CR>") -- put diff from current to other during diff
keymap.set("n", "<leader>cj", ":diffget 1<CR>") -- get diff from left (local) during merge
keymap.set("n", "<leader>ck", ":diffget 3<CR>") -- get diff from right (remote) during merge
keymap.set("n", "<leader>cn", "]c") -- next diff hunk
keymap.set("n", "<leader>cp", "[c") -- previous diff hunk

-- Diagnostics
keymap.set("n", "<space>e", vim.diagnostic.open_float)
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Quickfix keymaps
keymap.set("n", "<leader>qo", ":copen<CR>", { desc = "open quickfix list" }) -- open quickfix list
keymap.set("n", "<leader>qf", ":cfirst<CR>", { desc = "jump to first quickfix list item" }) -- jump to first quickfix list item
keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "jump to next quickfix list item" }) -- jump to next quickfix list item
keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "jump to prev quickfix list item" }) -- jump to prev quickfix list item
keymap.set("n", "<leader>ql", ":clast<CR>", { desc = "jump to last quickfix list item" }) -- jump to last quickfix list item
keymap.set("n", "<leader>qc", ":cclose<CR>", { desc = "close quickfix list" }) -- close quickfix list

-- Vim-maximizer
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle maximize tab

-- Nvim-tree
-- keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>")   -- toggle file explorer
keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
keymap.set("n", "<leader>er", ":NvimTreeFocus<CR>", { desc = "toggles focus to file explorer" }) -- toggle focus to file explorer
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "find file in file explorer" }) -- find file in file explorer

-- Telescope
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "find files" })
keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "live grep" })
keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "buffers" })
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "help tags" })
keymap.set(
	"n",
	"<leader>fs",
	require("telescope.builtin").current_buffer_fuzzy_find,
	{ desc = "current buffer fuzzy find" }
)
keymap.set("n", "<leader>fo", require("telescope.builtin").lsp_document_symbols, { desc = "lsp document" })
keymap.set("n", "<leader>fi", require("telescope.builtin").lsp_incoming_calls, { desc = "lsp incoming calls" })
keymap.set("n", "<leader>fm", function()
	require("telescope.builtin").treesitter({ default_text = ":method:" })
end)

-- Git-blame
keymap.set("n", "<leader>gb", ":GitBlameToggle<CR>") -- toggle git blame

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu)
keymap.set("n", "<leader>h1", function()
	require("harpoon.ui").nav_file(1)
end)
keymap.set("n", "<leader>h2", function()
	require("harpoon.ui").nav_file(2)
end)
keymap.set("n", "<leader>h3", function()
	require("harpoon.ui").nav_file(3)
end)
keymap.set("n", "<leader>h4", function()
	require("harpoon.ui").nav_file(4)
end)
keymap.set("n", "<leader>h5", function()
	require("harpoon.ui").nav_file(5)
end)
keymap.set("n", "<leader>h6", function()
	require("harpoon.ui").nav_file(6)
end)
keymap.set("n", "<leader>h7", function()
	require("harpoon.ui").nav_file(7)
end)
keymap.set("n", "<leader>h8", function()
	require("harpoon.ui").nav_file(8)
end)
keymap.set("n", "<leader>h9", function()
	require("harpoon.ui").nav_file(9)
end)

-- Vim REST Console
keymap.set("n", "<leader>xr", ":call VrcQuery()<CR>") -- Run REST query
-- LSP
keymap.set("n", "<leader>gg", "<cmd>lua vim.lsp.buf.hover()<CR>")
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
keymap.set("n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>")
keymap.set("n", "<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
keymap.set("n", "<leader>gN", "<cmd>lua vim.lsp.buf.rename()<CR>")
keymap.set("n", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>")
keymap.set("v", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>")
keymap.set("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")
keymap.set("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>")
keymap.set("n", "<leader>gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
keymap.set("n", "<leader>gn", "<cmd>lua vim.diagnostic.goto_next()<CR>")
keymap.set("n", "<leader>gR", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
keymap.set("i", "<C-Space>", "<cmd>lua vim.lsp.buf.completion()<CR>")

-- Debugging
keymap.set("n", "<leader>dt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
keymap.set("n", "<leader>ds", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>")
keymap.set("n", "<leader>dS", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>")
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.clear_breakpoints()<cr>")
keymap.set("n", "<leader>ba", "<cmd>Telescope dap list_breakpoints<cr>")
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>")
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>")
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>")
keymap.set("n", "<leader>dd", function()
	require("dap").disconnect()
	require("dapui").close()
end)
keymap.set("n", "<leader>dt", function()
	require("dap").terminate()
	require("dapui").close()
end)
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
keymap.set("n", "<leader>di", function()
	require("dap.ui.widgets").hover()
end)
keymap.set("n", "<leader>d?", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)
keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>")
keymap.set("n", "<leader>dh", "<cmd>Telescope dap commands<cr>")
keymap.set("n", "<leader>de", function()
	require("telescope.builtin").diagnostics({ default_text = ":E:" })
end)

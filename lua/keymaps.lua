-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- load the session for the current directory
-- vim.keymap.set("n", "<leader>qs", function()
-- 	require("persistence").load()
-- end)

vim.keymap.set({ "n", "v" }, "<leader>xe", function()
	require("nvim-emmet").wrap_with_abbreviation()
end, { desc = "Emmet" })

-- select a session to load
vim.keymap.set("n", "<leader>qs", function()
	require("persistence").select()
end, { desc = "select a session to load" })

-- load the last session
vim.keymap.set("n", "<leader>ql", function()
	require("persistence").load({ last = true })
end, { desc = "load the last session" })

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", function()
	require("persistence").stop()
end, { desc = "session wont be saved on exit" })

vim.keymap.set("n", "<leader>fb", function()
	require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format buffer" })

-- Previous buffer
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })

-- Next buffer
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })

-- Close current buffer
-- vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

vim.keymap.set("n", "J", "mzJz", { desc = "Join lines, keep cursor and view stable" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center cursor" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result centered and unfolded" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result centered and unfolded" })



-- Greatest remap ever: paste over selection without overwriting the clipboard
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without yanking (visual mode)" })

-- Yank to system clipboard (normal and visual modes)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })

-- Yank entire line to system clipboard (normal mode only)
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })

-- Delete without affecting clipboard (normal and visual modes)
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })


-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- vim: ts=2 sts=2 sw=2 et

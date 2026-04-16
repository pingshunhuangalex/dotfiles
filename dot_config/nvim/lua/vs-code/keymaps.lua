local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Trigger native commenting (usually Cmd+/)
keymap({ "n", "x" }, "gc", "<Plug>VSCodeCommentary", opts)

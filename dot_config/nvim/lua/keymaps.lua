local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Clear highlights on Esc in Normal Mode
keymap("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>", vim.tbl_extend("force", opts, { desc = "Clear highlights and escape" }))

-- Better indenting in Visual Mode (stays in visual mode)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

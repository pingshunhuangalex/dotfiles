local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "<Nop>", opts) -- Suppress cursor movement when using <Space> as the leader key in Normal Mode

keymap("n", "<Esc>", "<cmd>nohlsearch<CR><Esc>", opts) -- Clear highlights and escape on <Esc> in Normal Mode

-- Indent and stay in Visual Mode
keymap("x", ">", ">gv", opts)
keymap("x", "<", "<gv", opts)

-- Move texts (blocks) up and down
keymap("n", "<C-j>", ":m .+1<CR>==", opts)
keymap("n", "<C-k>", ":m .-2<CR>==", opts)
keymap("x", "<C-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<C-k>", ":m '<-2<CR>gv=gv", opts)

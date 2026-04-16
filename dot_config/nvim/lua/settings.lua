local opt = vim.opt

opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.expandtab = true          -- Use spaces instead of tabs
opt.ignorecase = true         -- Case-insensitive searching
opt.relativenumber = true     -- Show relative line numbers
opt.shiftwidth = 4            -- Size of an indent
opt.smartcase = true          -- Case-sensitive if search contains uppercase
opt.tabstop = 4               -- Number of spaces a tab counts for
opt.timeoutlen = 300          -- Time to wait for a mapped sequence (ms)
opt.undofile = true           -- Persistent undo

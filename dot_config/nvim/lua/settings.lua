local opt = vim.opt

opt.clipboard = "unnamedplus" -- Sync with system clipboard -> smart-update.lua
opt.expandtab = true          -- Convert tabs to spaces
opt.ignorecase = true         -- Case-insensitive searching
opt.relativenumber = true     -- Show relative line numbers
opt.shiftwidth = 4            -- Number of spaces for each step of (auto)indent
opt.smartcase = true          -- Case-sensitive if search contains uppercase
opt.tabstop = 4               -- Number of spaces that a <Tab> counts for
opt.timeoutlen = 300          -- Time to wait for a mapped sequence (ms)
opt.undofile = true           -- Persistent undo

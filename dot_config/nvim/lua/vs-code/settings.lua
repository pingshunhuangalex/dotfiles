local vscode = require('vscode')
local group = vim.api.nvim_create_augroup("VSCodeLineNumberToggle", { clear = true })

-- Function to update VS Code settings
-- Arguments: (setting_name, value, target ['global' or 'workspace'])
local function set_line_numbers(style)
    vscode.update_config("editor.lineNumbers", style, "global")
end

-- 1. Switch to Relative when leaving Insert Mode
vim.api.nvim_create_autocmd("InsertLeave", {
    group = group,
    callback = function()
        set_line_numbers("relative")
    end,
})

-- 2. Switch to Absolute when entering Insert Mode
vim.api.nvim_create_autocmd("InsertEnter", {
    group = group,
    callback = function()
        set_line_numbers("on")
    end,
})

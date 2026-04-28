local vscode = require('vscode')
local group = vim.api.nvim_create_augroup("RuntimeLineNumbers", { clear = true })

-- Toggle VS Code line numbers at runtime to bypass the VS Code settings and modify the activeTextEditor object in memory directly
-- style: 0 = Off, 1 = On (Absolute line numbers), 2 = Relative (Relative line numbers)
local function set_runtime_line_numbers(line_numbers_style)
    local line_numbers_option = string.format("vscode.window.activeTextEditor.options.lineNumbers = %d", line_numbers_style)

    vscode.eval_async(line_numbers_option)
end

-- Initialise with Relative
set_runtime_line_numbers(2)

-- Switch to Relative when exiting Insert Mode
-- { "BufEnter", "FocusGained", "InsertLeave", "WinEnter", "CmdlineLeave" }
vim.api.nvim_create_autocmd("InsertLeave", {
    group = group,
    callback = function() set_runtime_line_numbers(2) end,
})

-- Switch to Absolute when entering Insert Mode
-- { "BufLeave", "FocusLost", "InsertEnter", "WinLeave", "CmdlineEnter" }
vim.api.nvim_create_autocmd("InsertEnter", {
    group = group,
    callback = function() set_runtime_line_numbers(1) end,
})

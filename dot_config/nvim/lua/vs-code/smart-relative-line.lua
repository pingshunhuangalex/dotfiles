local vscode = require('vscode')
local group = vim.api.nvim_create_augroup("RuntimeLineNumbers", { clear = true })

local LINE_NUMBERS_STYLE = {
    OFF      = 0, -- off: Line numbers are not rendered
    ABSOLUTE = 1, -- on: Line numbers are rendered as absolute number
    RELATIVE = 2, -- relative: Line numbers are rendered as distance in lines to cursor position
    INTERVAL = 3, -- interval: Line numbers are rendered every 10 lines
}

-- Toggle VS Code line numbers at runtime to bypass the VS Code settings and modify the activeTextEditor object in memory directly
local function set_runtime_line_numbers(line_numbers_style)
    local line_numbers_snippet = [[
        const editor = vscode.window.activeTextEditor;

        if (editor?.options) {
            editor.options.lineNumbers = %d;
        }
    ]]

    vscode.eval_async(string.format(line_numbers_snippet, line_numbers_style))
end

-- Initialise with Relative
set_runtime_line_numbers(LINE_NUMBERS_STYLE.RELATIVE)

-- Switch to Relative when exiting Insert Mode
-- { "BufEnter", "FocusGained", "InsertLeave", "WinEnter", "CmdlineLeave" }
vim.api.nvim_create_autocmd("InsertLeave", {
    group = group,
    callback = function() set_runtime_line_numbers(LINE_NUMBERS_STYLE.RELATIVE) end,
})

-- Switch to Absolute when entering Insert Mode
-- { "BufLeave", "FocusLost", "InsertEnter", "WinLeave", "CmdlineEnter" }
vim.api.nvim_create_autocmd("InsertEnter", {
    group = group,
    callback = function() set_runtime_line_numbers(LINE_NUMBERS_STYLE.ABSOLUTE) end,
})

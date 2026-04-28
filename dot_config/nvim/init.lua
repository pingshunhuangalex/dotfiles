vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("settings")
require("keymaps")

if vim.g.vscode then
    require("vs-code.settings")
    require("vs-code.keymaps")
    require("vs-code.smart-relative-line")
else
    require("terminal.settings")
    require("terminal.keymaps")
end

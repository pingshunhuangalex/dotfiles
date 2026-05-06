local keymap = vim.keymap.set
local opts = { expr = true, silent = true }

local function smart_op(key, register, operation)
    local op = operation or ""

    if op ~= "" then
        return op
    end

    local reg = register or "_"
    local specified_reg = vim.v.register

    -- Respect explicitly specified registers that are not OS clipboard registers (+, *)
    if reg == "_" and specified_reg ~= "+" and specified_reg ~= "*" then
        return key
    end

    return '"' .. reg .. key
end

-- Use unnamed register (") for update operations with <leader> key
keymap({"n", "x"}, "<leader>d", function() return smart_op("d", '"') end, opts)
keymap({"n", "x"}, "<leader>D", function() return smart_op("D", '"') end, opts)
keymap({"n", "x"}, "<leader>c", function() return smart_op("c", '"') end, opts)
keymap({"n", "x"}, "<leader>C", function() return smart_op("C", '"') end, opts)
keymap({"n", "x"}, "<leader>x", function() return smart_op("x", '"') end, opts)
-- Yank and paste using unnamed register to match the update operations
keymap({"n", "x"}, "<leader>y", function() return smart_op("y", '"') end, opts)
keymap({"n", "x"}, "<leader>Y", function() return smart_op("Y", '"') end, opts)
keymap("n", "<leader>p", function() return smart_op("p", '"') end, opts)
keymap("n", "<leader>P", function() return smart_op("P", '"') end, opts)
keymap("x", "<leader>p", function() return smart_op("p", '"', '""P') end, opts)

-- Protect OS clipboard using black hole register (_) from default update operations
keymap({"n", "x"}, "d", function() return smart_op("d") end, opts)
keymap({"n", "x"}, "D", function() return smart_op("D") end, opts)
keymap({"n", "x"}, "c", function() return smart_op("c") end, opts)
keymap({"n", "x"}, "C", function() return smart_op("C") end, opts)
keymap({"n", "x"}, "x", function() return smart_op("x") end, opts)
-- Paste over selected text without overwriting the register
keymap("x", "p", function() return smart_op("p", nil, '"_dP') end, opts)

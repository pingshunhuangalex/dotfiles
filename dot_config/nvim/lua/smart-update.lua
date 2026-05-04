local keymap = vim.keymap.set
local opts = { expr = true, silent = true }

local function smart_op(key)
    local reg = vim.v.register

    -- Respect explicitly specified registers that are not system registers (+, *)
    if reg ~= '+' and reg ~= '*' then
        return key
    end

    -- NOTE: For Visual Mode, paste operation deletes to black hole then pastes
    if key == "p" then
        return '"_dP'
    end

    -- Default to unnamed register (") if no specific register is provided
    return '"_' .. key
end

-- Protect OS clipboard during update operations using the black hole register
keymap({"n", "v"}, "d", function() return smart_op("d") end, opts)
keymap({"n", "v"}, "D", function() return smart_op("D") end, opts)
keymap({"n", "v"}, "c", function() return smart_op("c") end, opts)
keymap({"n", "v"}, "C", function() return smart_op("C") end, opts)
keymap({"n", "v"}, "x", function() return smart_op("x") end, opts)
keymap("x", "p", function() return smart_op("p") end, opts) -- Paste over selected text without overwriting the register

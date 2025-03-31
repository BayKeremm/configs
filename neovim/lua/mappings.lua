require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
--
-- Debugger mappings
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Add breakpoint at line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start or continue the debugger" })


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "t" }, "<A-i>", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm", float_opts={
        row = 0.25,
        col = 0.1,
        width = 0.8,
        height = 0.5
    }}
end, { desc = "terminal toggle floating term" })

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll down and center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll up and center cursor

vim.opt.scrolloff = 10
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

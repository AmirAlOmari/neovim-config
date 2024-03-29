require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>i", function()
  require("nvchad.term").new { pos = "float", id = "floatTerm" }
end, { desc = "Toggle Floating term" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<F5>", require("dap").continue)
map("n", "<F10>", require("dap").step_over)
map("n", "<F11>", require("dap").step_into)
map("n", "<F12>", require("dap").step_out)
map("n", "<leader>b", require("dap").toggle_breakpoint)
map("n", "<leader>B", function()
  require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
end)

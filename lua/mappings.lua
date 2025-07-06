require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })

-- for switching to Normal Mode
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

-- for exiting terminal
map('t', '<ESC>', [[<C-\><C-n>]], { noremap = true, silent = true })

-- Move lines up/down (Normal mode)
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })

-- Move selected block up/down (Visual mode)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move block up" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

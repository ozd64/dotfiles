vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")

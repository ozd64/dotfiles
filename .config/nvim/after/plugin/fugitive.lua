vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gaa", vim.cmd.Git("add ."))
vim.keymap.set("n", "<leader>gc", vim.cmd.Git("co"))
vim.keymap.set("n", "<leader>gpush", vim.cmd.Git("push"))

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  --opens netwrw
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) --make file executable 

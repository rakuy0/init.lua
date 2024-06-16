local m = vim.keymap

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.maplocalleader = "\\" -- Same for `maplocalleader`

-- buffer controls
-- eh, whatever. I don't care about digraphs
m.set("n", "<C-j>", ":bnext<CR>")
m.set("n", "<C-k>", ":bprevious<CR>")
m.set("n", "<C-x>", ":bd<CR>")

--m.keymap.set("n", "<C-h>", "")
m.set("n", "<C-l>", ":nohlsearch<CR>")

m.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })


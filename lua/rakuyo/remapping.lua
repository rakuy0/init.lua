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

m.set('n', '<leader>v', ":vsp<CR>")
m.set('n', '<leader>s', ":sp<CR>")

-- gotta be a more neovim-esque way to set these
vim.cmd[[
    " Use Tab to expand and jump through snippets
    imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
    smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

    " Use Shift-Tab to jump backwards through snippets
    imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
    smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

local o = vim.opt

o.guicursor = ""

o.nu = true
o.relativenumber = false

o.ttyfast = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.scrolloff = 4

o.smartindent = true
o.showmatch = true

o.signcolumn = "yes"
o.expandtab = true

o.clipboard:append{"unnamed", "unnamedplus"}
o.autowrite = true
o.cursorline = true
o.smartcase = true
o.ignorecase = true
o.incsearch = true
o.virtualedit = "block"
o.hlsearch = true
o.backspace = "indent,eol,start"
o.termguicolors = true

o.wildmode = "longest:full"
o.wildignore:append{"*.o","*.pyc","*.bak","*.exe","*.jpg","*.jpeg","*.png",".*.gif","*.pyo"}
--formatoptions?
-- wildmenu?
o.dir = "/home/rakuyo/tmp"

o.mouse = ""

vim.api.nvim_create_autocmd({'BufWinEnter'}, {
  desc = 'return cursor to where it was last time closing the file',
  pattern = '*',
  command = 'silent! normal! g`"zv',
})

vim.cmd("autocmd BufRead,BufNewFile *.storm set filetype=storm")
vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

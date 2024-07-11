local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'
local util = require 'lspconfig.util'

configs.storm = {
  default_config = {
    cmd = {"python", "/home/rakuyo/code/stormgls/stormgls/stormgls.py"},
    filetypes = {'storm'},
    autostart = true,
    single_file_support = true,
    root_dir = util.find_git_ancestor,
    settings = {},
  },
}

lspconfig.storm.setup{}
vim.cmd("autocmd BufRead,BufNewFile *.storm set filetype=storm")

vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())

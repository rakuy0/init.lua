return {
    {
        'rakuy0/vim-storm',
        version = '*',
    },
    {
        dir = '/home/rakuyo/code/stormgls/',
        dependencies = "neovim/nvim-lspconfig",
        build = ':StormUpdate',
    }
}


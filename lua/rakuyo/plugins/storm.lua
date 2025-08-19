return {
    {
        -- 'rakuy0/vim-storm',
        dir = '/home/rakuyo/code/vim-storm/',
        --version = '*',
        config = function()
            vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
                pattern = '*.storm',
                callback = function() vim.bo.filetype = 'storm' end,
            })
        end
    },
    {
        dir = '/home/rakuyo/code/stormgls/',
        dependencies = "neovim/nvim-lspconfig",
        build = ':StormUpdate',
        config = function()
            vim.api.nvim_create_autocmd({'BufNewFile', 'BufRead'}, {
                pattern = '*.storm',
                callback = function() vim.bo.filetype = 'storm' end,
            })
        end
    }
}


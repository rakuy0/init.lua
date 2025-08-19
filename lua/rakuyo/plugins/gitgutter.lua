--return {
--    'airblade/vim-gitgutter',
--    version = '*',
--}
return {
    { 'lewis6991/gitsigns.nvim',
        lazy = false,
        opts = {},
        keys = {
            { '<Leader>j',
                ':Gitsigns next_hunk<CR>',
                desc = "[Git] Go to next change"
            },

            { '<Leader>k',
                ':Gitsigns prev_hunk<CR>',
                desc = "[Git] Go to previous change"
            },

            { '<Leader>p',
                ':Gitsigns preview_hunk<CR>',
                desc = "[Git] Preview change"
            },
        },
    }
}

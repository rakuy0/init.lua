return { "folke/which-key.nvim",
        event = "VeryLazy",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },

        opts = {},

        keys = {
            { "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "[Which-key] Show buffer Local keymaps",
            },
        },
    }

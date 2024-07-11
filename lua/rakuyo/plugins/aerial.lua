return {
    "stevearc/aerial.nvim",
    config = function()
        require("aerial").setup({
            filter_kind = {
                "Class",
                "Constructor",
                "Enum",
                "Function",
                "Interface",
                "Module",
                "Method",
                "Struct",
                "Variable",
            },
            on_attach = function(bufnr)
                -- Jump forwards/backwards with '{' and '}'
                vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
                vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
              end,
            vim.keymap.set("n", "<leader>t", "<cmd>AerialToggle right<CR>")
        })
    end
}

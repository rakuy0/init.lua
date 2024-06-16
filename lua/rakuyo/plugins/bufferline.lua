return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
        require('bufferline').setup({
            options = {
                --separator_style = "slope",
                --buffer_close_icon = "X",
                --indicator = {
                --    style = 'underline'
                --}
            }
        })
    end
}

return {{
    'nvim-mini/mini.align', 
    version = false,
    config = function()
        require('mini.align').setup({
            silent = false,
            mappings = {
                start = '<leader>ag',
                start_with_preview = '<leader>aG',
            }
        })
        vim.keymap.set('v', '<leader>tbb', function()
            require('mini.align').options = {
                split_pattern = '',
                justify_side = 'center',
                merge_delimiter = '',
            }
            vim.api.nvim_feedkeys(
                vim.api.nvim_replace_termcodes('<leader>ags', true, false, true),
                'v',
                false
            )
            end,
            { desc = 'Align visuals line with mini.align split mode'}
        )
        vim.keymap.set('v', '<leader>tbl', function()
            require('mini.align').options = {
                split_pattern = '',
                justify_side = 'left',
                merge_delimiter = '',
            }
            vim.api.nvim_feedkeys(
                vim.api.nvim_replace_termcodes('<leader>ags', true, false, true),
                'v',
                false
            )
            end,
            { desc = 'Align visuals line with mini.align split mode'}
        )
        vim.keymap.set('v', '<leader>tbr', function()
            require('mini.align').options = {
                split_pattern = '',
                justify_side = 'right',
                merge_delimiter = '',
            }
            vim.api.nvim_feedkeys(
                vim.api.nvim_replace_termcodes('<leader>ags', true, false, true),
                'v',
                false
            )
            end,
            { desc = 'Align visuals line with mini.align split mode'}
        )

        vim.keymap.set('v', '<leader>tbf', function()
            vim.api.nvim_feedkeys(
                vim.api.nvim_replace_termcodes('<leader>ag', true, false, true),
                'v',
                false
            )
            end,
            { desc = 'Align visuals line with mini.align split mode'}
        )
    end
},
-- {
--     { 'godlygeek/tabular', },
-- },
}



return {
    {
        'sudormrfbin/cheatsheet.nvim',
        cmd = 'Cheatsheet',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/popup.nvim',
            'nvim-lua/plenary.nvim',
        },
        keys = {
            { '<leader>?', '<cmd>Cheatsheet<cr>', desc = 'チートシート' },
        },
    },
}

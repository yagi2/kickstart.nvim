return {
    {
        'sindrets/diffview.nvim',
        cmd = { 'DiffviewOpen', 'DiffviewFileHistory' },
        keys = {
            { '<leader>gv', '<cmd>DiffviewOpen<cr>', desc = '変更ファイル一覧 (diff)' },
            { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = 'このファイルの変更履歴' },
            { '<leader>gq', '<cmd>DiffviewClose<cr>', desc = 'diff画面を閉じる' },
        },
        opts = {},
    },
}

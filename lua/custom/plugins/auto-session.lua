return {
    {
        'rmagatti/auto-session',
        lazy = false,
        opts = {
            auto_save = true,
            auto_restore = true,
            auto_create = true,
            suppressed_dirs = { '~/', '~/Downloads', '~/Desktop', '/tmp' },
            pre_save_cmds = { 'Neotree close' },
            post_restore_cmds = { 'Neotree show' },
            no_restore_cmds = { 'Neotree show' },
        },
    },
}

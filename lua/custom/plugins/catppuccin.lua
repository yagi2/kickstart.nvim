return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        init = function()
            vim.cmd.colorscheme 'catppuccin'
        end,
        opts = {
            flavour = 'mocha',
            transparent_background = false,
            dim_inactive = {
                enabled = true,
                shade = 'dark',
                percentage = 0.15,
            },
            integrations = {
                barbecue = {
                    dim_dirname = true,
                    bold_basename = true,
                    dim_context = false,
                    alt_background = false,
                },
                cmp = true,
                flash = true,
                gitsigns = true,
                indent_blankline = {
                    enabled = true,
                    scope_color = 'lavender',
                },
                mason = true,
                mini = { enabled = true },
                neotree = true,
                noice = true,
                notify = true,
                rainbow_delimiters = true,
                telescope = { enabled = true },
                treesitter = true,
                which_key = true,
            },
        },
    },
}

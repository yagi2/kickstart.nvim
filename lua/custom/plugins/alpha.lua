-- https://github.com/goolord/alpha-nvim
return {
  {
    'goolord/alpha-nvim',
    config = function()
      local dashboard = require('alpha.themes.dashboard')

      -- Set header
      dashboard.section.header.val = {
        "                                                     ",
        "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
        "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
        "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
        "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
        "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
        "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
        "                                                     ",
      }

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button("t", "  Neotree", ":Neotree toggle<Return>"),
        dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", "  Recent file", ":Telescope oldfiles <CR>"),
        dashboard.button("f", "󰥨  Find file", ":Telescope find_files hidden=true<CR>"),
        dashboard.button("g", "󰱼  Find text", ":Telescope live_grep <CR>"),
        dashboard.button("s", "  Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      -- Set footer
      local function footer()
        local datetime = os.date(" %Y-%m-%d   %H:%M:%S")
        local version = vim.version()
        local version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
        return datetime .. version_info
      end
      dashboard.section.footer.val = footer()

      require('alpha').setup(dashboard.config)
    end
  },
}
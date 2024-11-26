-- https://github.com/folke/noice.nvim
return {
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        presets = {
          bottom_search = true, -- Use a classic bottom cmdline for search
          command_palette = true, -- Position the cmdline and popupmenu together
          long_message_to_split = true, -- Long messages will be sent to a split
          inc_rename = false, -- Enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- Add a border to hover docs and signature help
        },
      })
    end,
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
      }
  }
}
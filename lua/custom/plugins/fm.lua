-- https://github.com/is0n/fm-nvim
return {
  {
    "is0n/fm-nvim",
    keys = {
      { '<Space>g', ':Lazygit<CR>' },
    },
    config = function()
      require('fm-nvim').setup {}
    end
  },
}
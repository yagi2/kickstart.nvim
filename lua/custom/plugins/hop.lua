-- https://github.com/smoka7/hop.nvim
return {
  {
    'smoka7/hop.nvim',
    event = 'BufRead',
    version = '*',
    opts = {
      multi_windows = true,
      keys = 'etovxqpdygfblzhckisuran',
    },
    keys = {
      { '<leader>hw', '<cmd>HopWord<CR>', mode = 'n', desc = 'Hop [w]ord' },
      { '<leader>hp', '<cmd>HopPattern<CR>', mode = 'n', desc = 'Hop [p]attern' },
      { '<leader>hl', '<cmd>HopLine<CR>', mode = 'n', desc = 'Hop [l]ine' },
      { '<leader>hc', '<cmd>HopChar1<CR>', mode = 'n', desc = 'Hop [c]har' },
      { '<leader>hC', '<cmd>HopChar2<CR>', mode = 'n', desc = 'Hop [C]har' },
    },
  },
}

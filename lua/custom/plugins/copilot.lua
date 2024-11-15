-- https://github.com/zbirenbaum/copilot.lua
-- https://github.com/zbirenbaum/copilot-cmp
return {
  {
    "zbirenbaum/copilot.lua",
    config = function()
      require("copilot").setup({
        suggestion = {enabled = false},
        panel = {enabled = false},
        copilot_node_command = 'node'
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}

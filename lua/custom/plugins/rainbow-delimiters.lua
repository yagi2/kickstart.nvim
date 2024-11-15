-- https://github.com/HiPhish/rainbow-delimiters.nvim
return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      require("rainbow-delimiters.setup").setup()
    end,
  },
}
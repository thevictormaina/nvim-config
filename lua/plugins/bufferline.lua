return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        separator_style = "slope",
        numbers = function(options)
          return options.raise(options.id)
        end,
      },
    })
  end,
}

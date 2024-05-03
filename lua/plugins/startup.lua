return {
  "startup-nvim/startup.nvim",
  dependecies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  enabled = false,
  config = function()
    require("startup").setup({
      theme = "evil",
    })
  end,
}

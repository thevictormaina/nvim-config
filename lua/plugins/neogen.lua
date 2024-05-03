return {
  "danymat/neogen",
  enabled = true,
  config = function()
    require("neogen").setup({})
  end,
  -- Uncomment next line if you want to follow only stable versions
  version = "*",
}

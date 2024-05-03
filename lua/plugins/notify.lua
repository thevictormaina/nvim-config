return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    notify.setup()
    notify("Welcome to Neovim!")
  end,
}

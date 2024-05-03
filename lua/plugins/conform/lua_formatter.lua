local conform = require("conform")
conform.setup({})

-- New formatter for Lua based on Prettier
local lua_formatter = vim.deepcopy(require("conform.formatters.prettier"))

-- Define arguments for Prettier CLI
local args =
	{ "--stdin-filepath", "$FILENAME", "--plugin", "@prettier/plugin-lua" }

require("conform.util").add_formatter_args(lua_formatter, args, {
	append = false,
})

---@cast lua_formatter conform.FormatterConfigOverride
require("conform").formatters.prettier_lua = lua_formatter

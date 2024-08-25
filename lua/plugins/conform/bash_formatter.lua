-- New formatter for Lua based on Prettier
local bash_formatter = vim.deepcopy(require("conform.formatters.prettier"))

-- Define arguments for Prettier CLI
local args =
	{ "--stdin-filepath", "$FILENAME", "--plugin", "prettier-plugin-sh" }

require("conform.util").add_formatter_args(bash_formatter, args, {
	append = false,
})

---@cast bash_formatter conform.FormatterConfigOverride
require("conform").formatters.bash_formatter = bash_formatter

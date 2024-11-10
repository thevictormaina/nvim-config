-- New formatter for Lua based on Prettier
local tailwind_formatter = vim.deepcopy(require("conform.formatters.prettier"))

-- Define arguments for Prettier CLI
local args =
	{
		"--stdin-filepath",
		"$FILENAME",
		"--plugin",
		"prettier-plugin-tailwindcss",
	}

require("conform.util").add_formatter_args(tailwind_formatter, args, {
	append = false,
})

---@cast tailwind_formatter conform.FormatterConfigOverride
require("conform").formatters.tailwind_formatter = tailwind_formatter

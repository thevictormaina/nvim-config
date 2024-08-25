-- New formatter for PHP based on Prettier
local php_formatter = vim.deepcopy(require("conform.formatters.prettier"))

-- Define arguments for Prettier CLI
local file_path = vim.fn.shellescape(vim.api.nvim_buf_get_name(0))
print(file_path)
local args =
	{
		"--stdin-filepath",
		('"%s"').format(file_path),
		"--plugin",
		"@prettier/plugin-php",
	}

require("conform.util").add_formatter_args(php_formatter, args, {
	append = false,
})

---@cast php_formatter conform.FormatterConfigOverride
require("conform").formatters.php_formatter = php_formatter

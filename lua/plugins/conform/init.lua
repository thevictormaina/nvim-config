return {
	-- Autoformat
	"stevearc/conform.nvim",
	lazy = false,
	keys = { {
		"<leader>f",
		function(_)
			require("conform").format({
				async = true,
				lsp_fallback = false,
			})
		end,
		mode = "",
		desc = "[F]ormat buffer",
	} },
	config = function()
		require("conform").setup({
			notify_on_error = false,
			format_on_save = function(bufnr)
				-- Disable "format_on_save lsp_fallback" for languages that don't
				-- have a well standardized coding style. You can add additional
				-- languages here or re-enable it for the disabled ones.
				local disable_filetypes = {
					c = true,
					cpp = true,
				}
				return {
					timeout_ms = 500,
					lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
				}
			end,
			formatters_by_ft = {
				lua = { "lua_formatter" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				typescriptreact = { "prettier" },
				sh = { "bash_formatter" },
				php = { "php_formatter" },
				-- Conform can also run multiple formatters sequentially
				-- python = { "isort", "black" },
				--
				-- You can use a sub-list to tell conform to run *until* a formatter
				-- is found.
				-- javascript = { { "prettierd", "prettier" } },
			},
			formatters = {},
		})

		-- Add Lua Formatter
		require("plugins.conform.lua_formatter")

		-- Add Bash Formatter
		require("plugins.conform.bash_formatter")

		-- Add PHP Formatter
		require("plugins.conform.php_formatter")
	end,
}

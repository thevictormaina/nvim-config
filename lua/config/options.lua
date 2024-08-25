-- Change from tabs to spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

-- Enable terminal GUI colors
vim.opt.termguicolors = true

-- Use separate notify function
vim.nofity = require("notify")

-- make zsh files recognized as sh for bash-ls & treesitter
-- vim.filetype.add {
-- 	extension = {
-- 		zsh = "sh",
-- 		sh = "sh", -- force sh-files with zsh-shebang to still get sh as filetype
-- 	},
-- 	filename = {
-- 		[".zshrc"] = "sh",
-- 		[".zshenv"] = "sh",
-- 	},
-- }

vim.filetype.add({
	extension = {
		zsh = "sh",
		sh = "sh",
	},
	filename = {
		[".zshrc"] = "sh",
		[".zshenv"] = "sh",
	},
})

-- Neovide Options
vim.g.neovide_floating_blur_amount_x = 3.0
vim.g.neovide_floating_blur_amount_y = 3.0

-- Change Neovim Shell based on OS
-- local os_name = require("lib.os-name")
-- if os_name == "Windows_NT" then
-- 	vim.opt.shell = "powershell.exe"
-- end
require("lib.check-os")({ Windows_NT = function()
	vim.opt.shell = "pwsh.exe"
end })

-- Vim-Astro Syntax Highlighting Options
vim.g.astro_typescript = "enable"


-- vim.g.astro_stylus = 'enable'

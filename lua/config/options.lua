-- Change from tabs to spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

vim.opt.termguicolors = true

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
vim.g.neovide_floating_blur_amount_x = 5.0
vim.g.neovide_floating_blur_amount_y = 5.0

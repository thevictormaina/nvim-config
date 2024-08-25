return {
	"coffebar/neovim-project",
	init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
	end,
	config = function()
		require("neovim-project").setup({
			projects = {
				"D:/Client Projects/*",
				"D:/Client Projects/*/*",
				"D:/Coding Projects/*",
				"D:/Coding Practice/*",
				"~/projects/*",
				"~/practice-projects/*",
				"~/client-projects/*",
				"~/.config/nvim/",
				"~/AppData/Local/nvim/",
			},
		})
		require("which-key").register(
			{
				p = {
					name = "[P]rojects",
					l = {
						"<cmd>Telescope neovim-project discover<CR>",
						"[L]ist all projects",
					},
					h = {
						"<cmd>Telescope neovim-project history<CR>",
						"View project [H]istory",
					},
					r = {
						"<cmd>NeovimProjectLoadRecent<CR>",
						"Open [R]ecent project",
					},
				},
			},
			{ prefix = "<leader>" }
		)
	end,
	dependencies = { { "nvim-lua/plenary.nvim" }, {
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
	}, { "Shatur/neovim-session-manager" } },
	lazy = false,
	priority = 100,
}

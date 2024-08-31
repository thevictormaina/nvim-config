return {
	"coffebar/neovim-project",
	init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
	end,
	config = function()
		require("neovim-project").setup({
			projects = {
				"D:/.vmg/projects/coding/*",
				"~/.vmg/projects/coding/*",
				"D:/.vmg/projects/client_projects/*",
				"~/.vmg/projects/client_projects/*",
				"D:/.vmg/projects/client_projects/*/*",
				"~/.vmg/projects/client_projects/*/*",
			},
		})
		require("which-key").add({
			"<leader>p",
			group = "[P]rojects",
			{
				"<leader>pl",
				"<cmd>Telescope neovim-project discover<CR>",
				desc = "[L]ist all projects",
			},
			{
				"<leader>ph",
				"<cmd>Telescope neovim-project history<CR>",
				desc = "View project [H]istory",
			},
			{
				"<leader>pr",
				"<cmd>NeovimProjectLoadRecent<CR>",
				desc = "Open [R]ecent project",
			},
		})
	end,
	dependencies = { { "nvim-lua/plenary.nvim" }, {
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
	}, { "Shatur/neovim-session-manager" } },
	lazy = false,
	priority = 100,
}

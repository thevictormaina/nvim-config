return {
	-- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function()
		-- This is the function that runs, AFTER loading
		require("which-key").setup()

		--
		-- Document existing key chains
		require("which-key").add({ {
			"<leader>c",
			desc = "[C]ode",
		}, {
			"<leader>r",
			desc = "[R]ename",
		}, {
			"<leader>s",
			desc = "[S]earch",
		}, {
			"<leader>w",
			desc = "[W]orkspace",
		}, {
			"<leader>t",
			desc = "[T]oggle",
		}, {
			"<leader>h",
			desc = "Git [H]unk",
		}, {
			"<leader>b",
			desc = "[B]uffer",
		}, {
			"<leader>lg",
			desc = "<cmd>LazyGit<cr>",
		} })
		-- visual mode
		require("which-key").add({ {
			"<leader>h",
			desc = "Git [H]unk",
			mode = "v",
		} })
	end,
}

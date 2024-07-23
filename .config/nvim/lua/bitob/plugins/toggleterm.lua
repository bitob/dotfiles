return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{ "<leader>tt", "<cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" },
		{ "<F7>", '<cmd>execute v:count . "ToggleTerm"<CR>', mode = "n", desc = "ToggleTerm" },
		{ "<F7>", "<cmd>ToggleTerm<CR>", mode = "t", desc = "ToggleTerm" },
		{ "<F7>", "<ESC><cmd>ToggleTerm<CR>", mode = "i", desc = "ToggleTerm" },
	},
	config = true,
}

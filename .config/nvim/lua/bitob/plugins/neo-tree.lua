return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem focus left<CR>", { desc = "Focus File Tree Left" })
		vim.keymap.set("n", "<leader>o", ":Neotree filesystem reveal float<CR>", { desc = "Open Floating File Tree" })
		vim.keymap.set("n", "<leader>b", ":Neotree buffers reveal float<CR>", { desc = "Open Floating Buffer Tree" })
	end,
}

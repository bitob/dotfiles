return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>ha",
			function()
				require("harpoon"):list():add()
			end,
			desc = "Add File to Harpoon",
		},
		{
			"<leader>hf",
			function()
				require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
			end,
			desc = "Toggle Harpoon quick Menu",
		},
		{
			"<leader>h1",
			function()
				require("harpoon"):list():select(1)
			end,
			desc = "GoTo Harpoon File 1",
		},
		{
			"<leader>h2",
			function()
				require("harpoon"):list():select(2)
			end,
			desc = "GoTo Harpoon File 2",
		},
		{
			"<leader>h3",
			function()
				require("harpoon"):list():select(3)
			end,
			desc = "GoTo Harpoon File 3",
		},
		{
			"<leader>h4",
			function()
				require("harpoon"):list():select(4)
			end,
			desc = "GoTo Harpoon File 4",
		},
		{
			"<leader>hn",
			function()
				require("harpoon"):list():next()
			end,
			desc = "GoTo Next Harpoon File",
		},
		{
			"<leader>hp",
			function()
				require("harpoon"):list():prev()
			end,
			desc = "GoTo Previous Harpoon File",
		},
	},
}

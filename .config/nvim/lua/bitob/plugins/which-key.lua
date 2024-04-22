-- Which Key has some not obvious features documented on github
-- <leader>' show current marks
-- Press " for an overview over registers
-- z= shows spelling suggestions
-- gc shows some motion help
-- I guess only Folke himself knows why these features are not shown in which key
-- There is more weird stuff about which key that I don't really get.
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
}


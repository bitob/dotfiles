return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				rust = { "rustanalyzer" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				markdown = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				python = { "isort", "black" },
				-- sh = { "shfmt" },
				sh = { "beautysh" },
			},
			formatters = {
				clang_format = {
					command = "clangd",
					args = {
						"--format-style=file",
						vim.fn.expand("%:h") .. "/.clang-format",
						"--fallback-style=Google",
					},
				},
			},
			format_on_save = nil,
			-- format_on_save = {
			-- 	lsp_fallback = true,
			-- 	async = false,
			-- 	timeout_ms = 1000,
			-- },
		})

		vim.keymap.set({ "n", "v" }, "<leader>lf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

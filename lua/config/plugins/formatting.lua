return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				graphql = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				["markdown"] = { "prettierd", "prettier", "markdown-toc", stop_after_first = true },
				["markdown.mdx"] = { "prettierd", "prettier", "markdown-toc", stop_after_first = true },
				cpp = { "clang-format" },
				sql = { "sql_formatter" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = true,
				timeout_ms = 1000,
			},
			formatters = {
				prettier = {
					command = function(self, ctx)
						local local_prettier = vim.fn.findfile("node_modules/.bin/prettier", ctx.dirname .. ";~")
						return local_prettier ~= "" and vim.fn.fnamemodify(local_prettier, ":p") or "prettier"
					end,
					cwd = require("conform.util").root_file({
						".prettierrc",
						".prettierrc.json",
						".prettierrc.js",
						"prettier.config.js",
						"package.json",
					}),
				},
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

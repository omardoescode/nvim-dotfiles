return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		if not dap.adapters["codelldb"] then
			dap.adapters["codelldb"] = {
				type = "server",
				host = "127.0.0.1",
				port = "${port}",
				executable = {
					command = "codelldb",
					args = {
						"--port",
						"${port}",
					},
				},
			}
		end
		for _, lang in ipairs({ "c", "cpp" }) do
			dap.configurations[lang] = {
				{
					type = "codelldb",
					request = "launch",
					name = "Launch file",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/build/", "file")
					end,
					cwd = "${workspaceFolder}",
				},
				{
					type = "codelldb",
					request = "attach",
					name = "Attach to process",
					pid = require("dap.utils").pick_process,
					cwd = "${workspaceFolder}",
				},
			}
		end

		dapui.setup()

		dap.listeners.after.event_initialized.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
		vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
		vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
		vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
		vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")
	end,
}

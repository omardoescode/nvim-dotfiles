return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
	},
	keys = {
		{ "<Leader>dt", "<cmd>DapToggleBreakpoint<CR>", desc = "Toggle Breakpoint" },
		{ "<Leader>dc", "<cmd>DapContinue<CR>", desc = "DAP Continue" },
		{ "<Leader>dx", "<cmd>DapTerminate<CR>", desc = "DAP Terminate" },
		{ "<Leader>do", "<cmd>DapStepOver<CR>", desc = "DAP Step Over" },
		{
			"<Leader>dn",
			function()
				local dap = require("dap")
				local condition = vim.fn.input("Breakpoint condition (leave empty to skip): ")
				local log_message = vim.fn.input("Log message (leave empty to skip): ")
				local hit_condition = nil
				if condition ~= "" and log_message ~= "" then
					dap.set_breakpoint(condition, hit_condition, log_message)
				elseif condition ~= "" then
					dap.set_breakpoint(condition, hit_condition)
				elseif log_message ~= "" then
					dap.set_breakpoint(nil, hit_condition, log_message)
				end
			end,
			desc = "Conditional Breakpoint",
		},
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		if not dap.adapters["cppdbg"] then
			dap.adapters["cppdbg"] = {
				id = "cppdbg",
				type = "executable",
				command = vim.fn.glob(vim.fn.expand("~") .. "/.vscode/extensions/ms-vscode.cpptools-*/debugAdapters/bin/OpenDebugAD7"),
			}
		end
		dap.configurations["cpp"] = {
			{
				name = "Launch file",
				type = "cppdbg",
				request = "launch",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				cwd = "${workspaceFolder}",
				stopAtEntry = true,
				setupCommands = {
					{
						text = "-enable-pretty-printing",
						description = "enable pretty printing",
						ignoreFailures = false,
					},
				},
			},
			{
				name = "Attach to gdbserver :1234",
				type = "cppdbg",
				request = "launch",
				MIMode = "gdb",
				miDebuggerServerAddress = "localhost:1234",
				miDebuggerPath = "/usr/bin/gdb",
				cwd = "${workspaceFolder}",
				program = function()
					return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
				end,
				setupCommands = {
					{
						text = "-enable-pretty-printing",
						description = "enable pretty printing",
						ignoreFailures = false,
					},
				},
			},
		}

		dap.configurations.c = dap.configurations.cpp
		dap.configurations.rust = dap.configurations.cpp

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
	end,
}

return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon.setup({})

		-- keymaps
		local keymap = vim.keymap
		keymap.set("n", "<leader>aa", function()
			harpoon:list():add()
		end, { desc = "Add file to harpoon list" })
		keymap.set("n", "<leader>as", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle Harpoon list" })
		keymap.set("n", "<C-P>", function()
			harpoon:list():prev()
		end)
		keymap.set("n", "<C-N>", function()
			harpoon:list():next()
		end)
		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
				})
				:find()
		end

		keymap.set("n", "<leader>fh", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open harpoon window" })
	end,
}

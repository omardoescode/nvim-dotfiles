return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = false,
	-- ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	event = {
		-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		"BufReadPre "
			.. vim.fn.expand("~")
			.. "/vault/**.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/vault/**.md",
	},
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",

		-- see below for full list of optional dependencies 👇
	},
	opts = {
		note_id_func = function(title)
			local name = ""
			if title ~= nil then
				-- If title is given, transform it into valid file name.
				name = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			else
				-- If title is nil, just add 4 random uppercase letters to the suffix.
				for _ = 1, 4 do
					name = "Untitled " .. string.char(math.random(65, 90))
				end
			end
			return name
		end,
		follow_url_func = function(url)
			-- Open the URL in the default web browser.
			-- vim.fn.jobstart({ "open", url }) -- Mac OS
			vim.fn.jobstart({ "xdg-open", url }) -- linux
		end,
		workspaces = {
			{
				name = "personal",
				path = "~/vault/",
			},
		},
		templates = {
			folder = "Templates/",
		},
		attachments = {
			img_folder = "Media",
			confirm_img_paste = false,
			img_name_func = function()
				-- Prefix image names with timestamp.
				return string.format("%s-", os.time())
			end,
		},
	},
	keys = {
		{
			"<leader>ofd",
			":ObsidianDailies<cr>",
			desc = "Open Obsidian Dailies",
		},
		{
			"<leader>od",
			":ObsidianToday<cr>",
			desc = "Open Today Note",
		},
		{
			"<leader>om",
			":ObsidianTomorrow<cr>",
			desc = "Open Tomorrow Note",
		},
		{
			"<leader>on",
			function()
				local title = vim.fn.input("Note Title: ")
				vim.cmd("ObsidianNew " .. title)
			end,
			desc = "Open Tomorrow Note",
		},
		{
			"<leader>oy",
			":ObsidianYesterday<cr>",
			desc = "Open Yesterday Note",
		},
		{
			"<leader>fot",
			":ObsidianTags<cr>",
			desc = "Search Obsidian Tags",
		},
		{
			"<leader>og",
			":ObsidianFollowLink<cr>",
			desc = "Follow Link in Obsidian",
		},
		{
			"<leader>oll",
			":ObsidianLink<cr>",
			desc = "Link a text to an existing note in Obsidian",
			mode = { "n", "v" },
		},
		{
			"<leader>oln",
			function()
				local title = vim.fn.input("Note Title: ")
				vim.cmd("ObsidianLinkNew" .. title)
			end,
			desc = "Convert text into link",
			mode = { "n", "v" },
		},
		{
			"<leader>ola",
			":ObsidianLinks<cr>",
			desc = "View all links in note",
			mode = { "n", "v" },
		},
		{
			"<leader>ob",
			":ObsidianBacklinks<cr>",
			desc = "View all backlinks in note",
			mode = { "n", "v" },
		},
		{
			"<leader>oti",
			":ObsidianTemplate<cr>",
			desc = "Insert Template",
		},
		{
			"<leader>os",
			":ObsidianSearch<cr>",
			desc = "Obsidian Search",
		},
		{
			"<leader>oe",
			":ObsidianExtractNote<cr>",
			desc = "Extract Visual text into a new note and link to it",
			mode = { "n", "v" },
		},
		{
			"<leader>op",
			":ObsidianPasteImg<cr>",
			desc = "Paste Image in Obsidian",
		},
		{
			"<leader>or",
			":ObsidianRename<cr>",
			desc = "Rename current obsidian file",
		},
		{
			"<leader>oo",
			":ObsidianOpen<cr>",
			desc = "Open in Obsidian App",
		},
	},
}

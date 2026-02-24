-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = "*",
	command = "set nopaste",
})

-- Auto-reload files changed outside of neovim (e.g. by Claude Code in a split pane)
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
	command = "silent! checktime",
})

-- Refresh Snacks explorer when focus returns (picks up files created by external tools)
vim.api.nvim_create_autocmd("FocusGained", {
	callback = function()
		pcall(function()
			local pickers = Snacks.picker.get({ source = "explorer", tab = false })
			if #pickers == 0 then
				return
			end
			local Tree = require("snacks.explorer.tree")
			for _, picker in ipairs(pickers) do
				Tree:refresh(picker:cwd())
			end
			require("snacks.explorer.watch").refresh()
		end)
	end,
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc" },
	callback = function()
		vim.opt_local.conceallevel = 0
	end,
})

-- Obsidian.nvim requires conceallevel >= 1 for its UI elements
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown" },
	callback = function()
		vim.opt_local.conceallevel = math.max(vim.opt_local.conceallevel:get(), 1)
	end,
})

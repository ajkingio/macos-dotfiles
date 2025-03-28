-- bootstrap lazy.nvim and load plugins
require("config.lazy")

-- Load configurations
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Set colorscheme after VimEnter
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("colorscheme gruvbox")
  end,
})

-- Create an autocommand to load plugins after Neovim is fully initialized
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Load core plugins first
    require("plugins.core")

    -- Load UI plugins
    require("plugins.ui.colorscheme")
    require("plugins.ui.lualine")
    require("plugins.ui.bufferline")

    -- Load editor plugins
    require("plugins.editor.harpoon")

    -- Load database plugins
    require("plugins.dadbod")
    require("plugins.dadbod-ui")

    -- Load additional plugins
    require("plugins.obsidian")
    require("plugins.magma")
    require("plugins.devicons")
    require("plugins.avante")
    require("plugins.disabled")

    -- Set colorscheme
    require("gruvbox").setup()
    vim.cmd("colorscheme gruvbox")
  end,
})

--[[
local harpoon = require("harpoon")

-- REQUIRED
harpoon.setup()
-- REQUIRED
vim.keymap.set("n", "<leader>a", function()
  harpoon:list():append()
end)
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "<C>h", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<C-j>", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<C-k>", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<C-l>", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
  harpoon:list():next()
end)

vim.cmd("highlight! HarpoonInactive guibg=NONE guifg=#63698c")
vim.cmd("highlight! HarpoonActive guibg=NONE guifg=white")
vim.cmd("highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7")
vim.cmd("highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7")
vim.cmd("highlight! TabLineFill guibg=NONE guifg=white")
]]

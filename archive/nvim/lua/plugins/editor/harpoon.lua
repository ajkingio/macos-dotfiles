return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()

      -- Keymaps
      vim.keymap.set("n", "<leader>a", function()
        harpoon:list():append()
      end)
      vim.keymap.set("n", "<C-e>", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set("n", "<C-h>", function()
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

      vim.keymap.set("n", "<C-S-P>", function()
        harpoon:list():prev()
      end)
      vim.keymap.set("n", "<C-S-N>", function()
        harpoon:list():next()
      end)

      -- Highlighting
      vim.cmd([[
        highlight! HarpoonInactive guibg=NONE guifg=#63698c
        highlight! HarpoonActive guibg=NONE guifg=white
        highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7
        highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7
        highlight! TabLineFill guibg=NONE guifg=white
      ]])
    end,
  },
} 
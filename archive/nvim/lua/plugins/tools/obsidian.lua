return {
  {
    "epwalsh/obsidian.nvim",
    lazy = true,
    event = { "BufReadPre " .. vim.fn.expand("~") .. "/Documents/**.md" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("obsidian").setup({
        dir = "~/Documents/Notes",
        completion = {
          nvim_cmp = true,
        },
      })
    end,
  },
} 
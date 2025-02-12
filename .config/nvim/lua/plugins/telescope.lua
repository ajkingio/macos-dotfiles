return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-telescope/telescope-file-browser.nvim" },
  config = function()
    require("telescope").setup({
      extensions = {
        file_browser = {
          hijack_netrw = true, -- Ensures Telescope replaces Netrw
        },
      },
    })
    require("telescope").load_extension("file_browser")
  end,
}

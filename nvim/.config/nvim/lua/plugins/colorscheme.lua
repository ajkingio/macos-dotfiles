return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add ayu
  { "shatur/neovim-ayu" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}

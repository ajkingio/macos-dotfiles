return {
  {
    "tpope/vim-dadbod",
    lazy = true,
    cmd = { "DB" },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      "tpope/vim-dadbod",
      "tpope/vim-dotenv",
    },
    cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection" },
    config = function()
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_show_database_icon = 1
    end,
  },
} 
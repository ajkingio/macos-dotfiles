return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_win_position = "right"
    vim.g.db_ui_winwidth = 30
    vim.g.db_ui_auto_execute_table_ui = true
    vim.g.db_ui_save_location = "~/.config/nvim/db_connections"
    vim.g.db_ui_icons = {
      expanded = "▾",
      collapsed = "▸",
      saved_query = "💾",
      new_query = "📝",
      tables = "📊",
      buffers = "💿",
      connection_ok = "✓",
      connection_error = "✕",
    }
    vim.g.db_ui_use_database_schema_for_suggestion = true
    vim.g.db_ui_execute_on_save = false
    vim.g.db_ui_show_database_icon = true
    vim.g.db_ui_show_ascii = true
    vim.g.db_ui_table_helpers = true
    vim.g.db_ui_table_helpers_sorters = {
      table_name = function(a, b)
        return a.name:lower() < b.name:lower()
      end,
    }
    vim.g.db_ui_disable_mappings = false
    vim.g.db_ui_disable_winmoves = false
    vim.g.db_ui_hide_schemas = {}
    vim.g.db_ui_hide_table_types = {}
    vim.g.db_ui_icons = {
      expanded = "▾",
      collapsed = "▸",
      saved_query = "💾",
      new_query = "📝",
      tables = "📊",
      buffers = "💿",
      connection_ok = "✓",
      connection_error = "✕",
    }
  end,
  config = function()
    -- Keymaps
    vim.keymap.set("n", "<leader>db", "<cmd>DBUI<cr>", { desc = "Open Database UI" })
    vim.keymap.set("n", "<leader>dbt", "<cmd>DBUIToggle<cr>", { desc = "Toggle Database UI" })
    vim.keymap.set("n", "<leader>dba", "<cmd>DBUIAddConnection<cr>", { desc = "Add Database Connection" })
    vim.keymap.set("n", "<leader>dbf", "<cmd>DBUIFindBuffer<cr>", { desc = "Find Database Buffer" })
    vim.keymap.set("n", "<leader>dbr", "<cmd>DBUIRenameBuffer<cr>", { desc = "Rename Database Buffer" })
    vim.keymap.set("n", "<leader>dbd", "<cmd>DBUILastQueryInfo<cr>", { desc = "Show Last Query Info" })
    vim.keymap.set("n", "<leader>dbh", "<cmd>DBUIHideNotifications<cr>", { desc = "Hide Notifications" })
    vim.keymap.set("n", "<leader>dbs", "<cmd>DBUISaveQuery<cr>", { desc = "Save Query" })
    vim.keymap.set("n", "<leader>dbl", "<cmd>DBUILoadQuery<cr>", { desc = "Load Query" })
    vim.keymap.set("n", "<leader>dbq", "<cmd>DBUIQuit<cr>", { desc = "Quit Database UI" })
  end,
}

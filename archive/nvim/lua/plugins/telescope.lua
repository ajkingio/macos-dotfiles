return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-telescope/telescope-file-browser.nvim" },
  config = function()
    require("telescope").setup({
      extensions = {
        file_browser = {
          hijack_netrw = true, -- Ensures Telescope replaces Netrw
          depth = 99,
          hidden = true,
          respect_gitignore = true,
          grouped = true,
          initial_mode = "normal",
          layout_config = {
            height = 40,
            width = 0.8,
            preview_width = 0.5,
          },
        },
      },
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          ".git",
          "dist",
          "build",
          ".next",
          ".venv",
          "__pycache__",
        },
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
        },
        mappings = {
          i = {
            ["<C-h>"] = "which_key",
            ["<C-u>"] = false, -- Disable clearing prompt
            ["<C-c>"] = "close",
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
            ["<C-n>"] = "cycle_history_next",
            ["<C-p>"] = "cycle_history_prev",
            ["<Down>"] = "move_selection_next",
            ["<Up>"] = "move_selection_previous",
            ["<CR>"] = "select_default",
            ["<C-x>"] = "select_horizontal",
            ["<C-v>"] = "select_vertical",
            ["<C-t>"] = "select_tab",
            ["<C-d>"] = "delete_buffer",
          },
          n = {
            ["<C-h>"] = "which_key",
            ["<C-c>"] = "close",
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
            ["<C-n>"] = "cycle_history_next",
            ["<C-p>"] = "cycle_history_prev",
            ["<Down>"] = "move_selection_next",
            ["<Up>"] = "move_selection_previous",
            ["<CR>"] = "select_default",
            ["<C-x>"] = "select_horizontal",
            ["<C-v>"] = "select_vertical",
            ["<C-t>"] = "select_tab",
            ["<C-d>"] = "delete_buffer",
            ["?"] = "which_key",
          },
        },
      },
    })
    require("telescope").load_extension("file_browser")

    -- Keymaps
    local builtin = require("telescope.builtin")
    local extensions = require("telescope").extensions

    -- File finding
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
    vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Find old files" })
    vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Find string under cursor" })
    vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Find commands" })
    vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = "Find quickfix" })
    vim.keymap.set("n", "<leader>fl", builtin.loclist, { desc = "Find location list" })
    vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Find marks" })
    vim.keymap.set("n", "<leader>fr", builtin.registers, { desc = "Find registers" })
    vim.keymap.set("n", "<leader>ft", builtin.colorscheme, { desc = "Find colorscheme" })
    vim.keymap.set("n", "<leader>f/", builtin.current_buffer_fuzzy_find, { desc = "Find in current buffer" })
    vim.keymap.set("n", "<leader>f:", builtin.command_history, { desc = "Find command history" })
    vim.keymap.set("n", "<leader>f;", builtin.search_history, { desc = "Find search history" })
    vim.keymap.set("n", "<leader>f<CR>", builtin.resume, { desc = "Resume last telescope" })
    vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find diagnostics" })
    vim.keymap.set("n", "<leader>fe", builtin.filetypes, { desc = "Find filetypes" })
    vim.keymap.set("n", "<leader>fi", builtin.highlights, { desc = "Find highlights" })
    vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Find keymaps" })
    vim.keymap.set("n", "<leader>fo", builtin.vim_options, { desc = "Find vim options" })
    vim.keymap.set("n", "<leader>fs", builtin.git_status, { desc = "Find git status" })
    vim.keymap.set("n", "<leader>ft", builtin.treesitter, { desc = "Find treesitter" })
    vim.keymap.set("n", "<leader>fw", builtin.lsp_workspace_symbols, { desc = "Find workspace symbols" })
    vim.keymap.set("n", "<leader>fx", builtin.lsp_document_symbols, { desc = "Find document symbols" })
    vim.keymap.set("n", "<leader>f<leader>", builtin.builtin, { desc = "Find builtin" })

    -- File browser
    vim.keymap.set("n", "<leader>fb", extensions.file_browser.file_browser, { desc = "File browser" })
    vim.keymap.set("n", "<leader>fB", extensions.file_browser.file_browser, { desc = "File browser (cwd)" })
  end,
}

return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "BufReadPost",
  opts = {
    suggestion = {
      enabled = true, -- Enable inline suggestions
      auto_trigger = true, -- Automatically trigger suggestions as you type
      keymap = {
        accept = "<C-j>", -- Accept suggestion with Ctrl+j
        next = "<C-k>", -- Navigate to next suggestion with Ctrl+k
        prev = "<C-l>", -- Navigate to previous suggestion with Ctrl+l
        dismiss = "<C-\\>", -- Dismiss suggestion with Ctrl+\
      },
    },
    panel = { enabled = true }, -- Enable the side panel for multiple suggestions
    filetypes = { -- Add more filetypes if needed
      markdown = true,
      help = true,
      python = true,
      javascript = true,
    },
  },
}

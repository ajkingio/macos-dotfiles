return {
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    init = function()
      -- Load cmp module before anything else
      require("cmp")
    end,
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
          { name = "cmdline" },
        }),
      })

      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
          { name = "cmdline" },
        }),
      })

      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    lazy = false,
    dependencies = { "nvim-cmp" },
  },
  {
    "rafamadriz/friendly-snippets",
    lazy = false,
    dependencies = { "nvim-cmp" },
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = false,
    dependencies = { "nvim-cmp" },
  },
  {
    "hrsh7th/cmp-buffer",
    lazy = false,
    dependencies = { "nvim-cmp" },
  },
  {
    "hrsh7th/cmp-path",
    lazy = false,
    dependencies = { "nvim-cmp" },
  },
  {
    "hrsh7th/cmp-cmdline",
    lazy = false,
    dependencies = { "nvim-cmp" },
  },
  {
    "saadparwaiz1/cmp_luasnip",
    lazy = false,
    dependencies = { "nvim-cmp" },
  },
} 
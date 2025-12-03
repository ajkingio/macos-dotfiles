return {
    -- Disable markdown linting while keeping LSP
    {
        "mfussenegger/nvim-lint",
        optional = true,
        opts = {
            linters_by_ft = {
                markdown = {}, -- Empty table disables linting for markdown
            },
        },
    },
    {
        "stevearc/conform.nvim",
        optional = true,
        opts = {
            formatters_by_ft = {
                -- Keep prettier but remove markdownlint-cli2 and markdown-toc
                markdown = { "prettier" },
                ["markdown.mdx"] = { "prettier" },
            },
        },
    },
    {
        "nvimtools/none-ls.nvim",
        optional = true,
        opts = function(_, opts)
            -- Filter out markdownlint from none-ls sources if it exists
            if opts.sources then
                opts.sources = vim.tbl_filter(function(source)
                    return source.name ~= "markdownlint_cli2"
                end, opts.sources)
            end
            return opts
        end,
    },
}

if vim.loader then
    vim.loader.enable()
end

vim.g.lazyvim_cmp = "nvim-cmp"

_G.dd = function(...)
    require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

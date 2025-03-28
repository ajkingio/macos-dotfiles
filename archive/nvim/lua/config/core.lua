-- Core Neovim configuration
local function setup_options()
  local opt = vim.opt

  -- General
  opt.mouse = "a" -- Enable mouse support
  opt.clipboard = "unnamedplus" -- Use system clipboard
  opt.swapfile = false -- Don't use swap files
  opt.completeopt = "menuone,noselect" -- Better completion experience
  opt.termguicolors = true -- Enable true colors
  opt.showmode = false -- Don't show mode in command line
  opt.signcolumn = "yes" -- Always show sign column
  opt.updatetime = 100 -- Faster completion
  opt.timeoutlen = 300 -- Faster key sequence completion
  opt.scrolloff = 8 -- Keep 8 lines above/below cursor when scrolling
  opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor when scrolling
  opt.pumheight = 10 -- Maximum number of items in completion menu
  opt.showtabline = 2 -- Always show tabline
  opt.laststatus = 3 -- Global statusline
  opt.splitbelow = true -- Horizontal splits go below current window
  opt.splitright = true -- Vertical splits go right of current window
  opt.autowrite = true -- Auto save before :next, :make etc.
  opt.autoread = true -- Auto read when file is changed from outside
  opt.fileencoding = "utf-8" -- File content encoding for the buffer
  opt.encoding = "utf-8" -- String encoding to use
  opt.history = 100 -- Number of commands to remember in a history table
  opt.shell = "/bin/zsh" -- Shell to use for `:terminal` commands
  opt.backupskip = "/tmp/*,/private/tmp/*" -- Paths to skip when backing up
  opt.smartcase = true -- Don't ignore case with capitals
  opt.smartindent = true -- Insert indents automatically
  opt.breakindent = true -- Enable break indent
  opt.wrap = false -- Don't wrap lines
  opt.linebreak = true -- Break lines at word boundaries
  opt.breakindentopt = "shift:2,min:40" -- Indent wrapped lines
  opt.cursorline = true -- Highlight the current line
  opt.number = true -- Show line numbers
  opt.relativenumber = true -- Show relative line numbers
  opt.numberwidth = 4 -- Minimal number of columns to use for the line number
  opt.ruler = false -- Don't show the line/column number information
  opt.colorcolumn = "80" -- Highlight the text at column 80
  opt.cursorcolumn = false -- Don't highlight the current column
  opt.guicursor = "" -- Disable cursor style changes in the terminal
  opt.showmatch = true -- Show matching brackets/parentheses
  opt.matchtime = 1 -- Tenths of a second to show the matching paren
  opt.ignorecase = true -- Ignore case when searching
  opt.smartcase = true -- Don't ignore case with capitals
  opt.incsearch = true -- Show search matches while typing
  opt.hlsearch = true -- Highlight all matches on previous search pattern
  opt.undofile = true -- Persistent undo
  opt.undolevels = 10000 -- Maximum number of changes that can be undone
  opt.pumblend = 10 -- Popup menu blend
  opt.winblend = 0 -- Window blend
  opt.list = true -- Show some invisible characters
  opt.listchars = { tab = "» ", trail = "·" } -- Show tabs and trailing spaces
  opt.fillchars = {
    horiz = "━",
    horizup = "┻",
    horizdown = "┳",
    vert = "┃",
    vertleft = "┫",
    vertright = "┣",
    verthoriz = "╋",
  }
  opt.diffopt = "internal,filler,closeoff" -- Enhanced diff options
  opt.sessionoptions = "buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions" -- Options for :mksession
  opt.viewoptions = "cursor,folds,slash,unix" -- Options for :mkview
  opt.wrapmargin = 8 -- Number of characters from the right margin where wrapping starts
  opt.joinspaces = false -- Don't insert two spaces after punctuation on a join
  opt.jumpoptions = "stack" -- Stack the jump list
  opt.grepprg = "rg --vimgrep" -- Use ripgrep for :grep
  opt.grepformat = "%f:%l:%c:%m" -- Format for :grep output
end

-- Create an autocommand to set options after Neovim is fully initialized
vim.api.nvim_create_autocmd("VimEnter", {
  callback = setup_options,
}) 
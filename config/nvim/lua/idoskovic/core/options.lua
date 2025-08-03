vim.opt.number = true
-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true
vim.opt.autoindent = true -- Auto-indent new lines
vim.opt.smartindent = true -- Smart auto-indenting on new lines 

vim.opt.tabstop = 4 -- Number of spaces that a <Tab> counts for

vim.opt.swapfile = false -- No swap files
vim.opt.backup = false -- No backup files
vim.opt.undofile = true -- Enable undo files

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

vim.opt.backspace = {
  'indent', -- Allow backspace over indent
  'eol',    -- Allow backspace over end of line
  'start',  -- Allow backspace over start of insert
} -- Allow backspace to work like normal


-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

vim.opt.termguicolors = true -- Enable 24-bit RGB colors in the TUI
vim.opt.background = 'dark' -- Set background to dark, can also be 'light'
vim.opt.guicursor = ""
-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'


-- Decrease update time
vim.opt.updatetime = 50

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Behaviors
vim.opt.belloff = "all" -- NO BELLS!
vim.opt.completeopt = { "menuone", "noselect" } -- ins-completion how I like it
vim.opt.swapfile = false -- no swap files
vim.opt.inccommand = "nosplit" -- preview %s commands live as I type
vim.opt.undofile = true -- keep track of my 'undo's between sessions
vim.opt.grepprg = "rg --vimgrep --smart-case --no-heading" -- search with rg
vim.opt.grepformat = "%f:%l:%c:%m" -- filename:line number:column number:error message
vim.opt.mouse = "nv" -- use mouse in normal, visual modes
vim.opt.mousescroll = "ver:3,hor:0" -- scroll vertically by 3 lines, no horizontal scrolling
vim.opt.scrolloff = 10 -- padding between cursor and top/bottom of window
vim.opt.foldlevel = 0 -- allow folding the whole way down
vim.opt.foldlevelstart = 99 -- open files with all folds open
vim.opt.splitright = true -- prefer vsplitting to the right
vim.opt.splitbelow = true -- prefer splitting below
vim.opt.splitkeep = "screen" -- keep text on screen the same when splitting
vim.opt.wrap = false -- don't wrap my text
vim.opt.linebreak = true -- if I toggle `wrap` ON, only break between words



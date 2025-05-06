-- [[ Basic Settings ]]
vim.opt.number = true                 -- Show absolute line number
vim.opt.relativenumber = true         -- Show relative line number
vim.opt.cursorline = true             -- Highlight the current line
vim.opt.termguicolors = true          -- Enable true color support
vim.opt.mouse = 'a'                   -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'    -- Use system clipboard
vim.opt.wrap = false                  -- Disable line wrapping
vim.opt.tabstop = 2                   -- Number of spaces per tab
vim.opt.shiftwidth = 2                -- Number of spaces for auto-indent
vim.opt.expandtab = true              -- Use spaces instead of tabs
vim.opt.smartindent = true            -- Smart indentation
vim.opt.scrolloff = 10                -- Minimum lines to keep above and below cursor
vim.opt.signcolumn = 'yes'            -- Always show the sign column
vim.opt.showmode = false              -- Disable showmode since lualine shows the mode as well

-- [[ Search Settings ]]
vim.opt.ignorecase = true             -- Ignore case during search
vim.opt.smartcase = true              -- Override ignorecase if search contains uppercase
vim.opt.incsearch = true              -- Show partial matches as you type
vim.opt.hlsearch = true               -- Highlight search results

-- [[ Split Settings ]]
vim.opt.splitbelow = true             -- Horizontal splits will open below
vim.opt.splitright = true             -- Vertical splits will open to the right

-- [[ Misc Settings ]]
vim.opt.backup = false                -- Disable backup files
vim.opt.writebackup = false           -- Disable write backup files
vim.opt.swapfile = false              -- Disable swap files
vim.opt.updatetime = 300              -- Faster completion
vim.opt.timeoutlen = 500              -- Time to wait for a mapped sequence to complete

-- [[ Clipboard ]]
vim.opt.clipboard = 'unnamedplus'     -- Use system clipboard

-- [[ Undo Settings ]]
vim.opt.undofile = true               -- Enable persistent undo
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

-- [[ Filetype Settings ]]
vim.opt.filetype = "on"               -- Enable filetype detection


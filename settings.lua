Colorscheme = 'xcodedark'

WrapLine = false
LineNumbers = true
RelativeLineNumbers = false
CursorLine = true
ColorColumn = 80
HighlightSearch = false -- Highlight all search matches
SearchIgnoreCase = true
AutoScroll = 1 -- Scroll when this many lines from top/bottom

TabSize = 4
UseSpaces = true

Python = {}
Python.useKite = false

Term = {}
Term.shell = vim.o.shell -- string with path to shell
Term.size = 10
Term.shade = true
Term.direction = 'horizontal' -- horizontal, vertical, window, or float
Term.floatBorder = 'shadow' -- single, double, shadow, or curved

-- true: refresh on edit
-- false: refresh on save
MarkdownLiveRefresh = false

Font = "SFMono Nerd Font Mono"

DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

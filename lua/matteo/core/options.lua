-- [[ OPTION ]]
--   See...
--      - `:h option-list` for a exaustive options list
--      - `:h option-summary` for all options summary

local opt = vim.opt -- for conciseness

-- To see the specific description of all options down below,
-- Pick the `OPTION-NAME` between `opt.` and `=` and type in Neovim `:h 'OPTION-NAME'`

-- keep backup file after overwriting a file
opt.backup = true -- default: false

-- list of directories for the backup file
opt.backupdir = { os.getenv('XDG_STATE_HOME') .. '/nvim/backup//', '.' } -- default: {'.', os.getenv('XDG_STATE_HOME') .. '/nvim/backup//'}

-- extension used for the backup file
opt.backupext = '.bak' -- default: '~'

-- wrapped line repeats indent
opt.breakindent = true -- default: false

-- which directory to start browsing in
opt.browsedir = 'current' -- default: 'last'

-- change directory to the home directory by ":cd"
opt.cdhome = true -- default: false

-- To ALWAYS use the OS clipboard for all operations
opt.clipboard = { 'unnamedplus' } -- default: {}

-- height of the command-line window
opt.cmdwinheight = 20 -- default: 7

-- options for Insert mode completion
opt.completeopt = { 'menuone', 'preview', 'noselect' } -- default: {'menu', 'preview'}

-- ask what to do about unsaved/read-only files
opt.confirm = true -- default: false

-- make 'autoindent' use existing indent structure
opt.copyindent = true -- default: false

-- highlight the screen line of the cursor
opt.cursorline = true -- default: false

-- enable the entering of digraphs in Insert mode
opt.digraph = true -- default: false

-- windows are automatically made the same size
opt.equalalways = false -- default: true

-- automatically detected character encodings
opt.fileencodings = { 'utf-8', 'default', 'latin1' } -- default: {'ucs-bom', 'utf-8', 'default', 'latin1'}

-- GUI: settings for cursor shape and blinking
opt.guicursor = { -- default: {'n-v-c-sm:block', 'i-ci-ve:ver25', 'r-cr-o:hor20'}
"n-v-c:block",
"i-ci-ve:ver25",
"r-cr:hor20",
"o:hor50",
"a:blinkwait700-blinkoff400-blinkon250",
"sm:block-blinkwait175-blinkoff150-blinkon175",
}

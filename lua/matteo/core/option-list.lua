-- [[ OPTION ]]
--   See...
--      - `:h option-list` for a exaustive options list
--      - `:h option-summary` for all options summary

local opt = vim.opt -- for conciseness

-- To see the specific description of all options down below,
-- Pick the `OPTION-NAME` between `opt.` and `=` and type in Neovim `:h 'OPTION-NAME'`

-- ALL OPTIONS --

-- allow CTRL-_ in Insert and Command-line mode to enter in inverse mode
opt.allowrevins = false -- default: false

-- what to do with Unicode chars of ambiguous width
opt.ambiwidth = 'single' -- default: 'single'

-- change the current working directory to the one containing the file that was opened or selected
opt.autochdir = false -- default: false

-- for Arabic as a default second language
opt.arabic = false -- default: false

-- do shaping for Arabic characters
opt.arabicshape = true -- default: true

-- take indent for new line from previous line
opt.autoindent = true -- default: true

-- automatically read file when changed outside of Vim
opt.autoread = true -- default: true

-- automatically write file if changed
opt.autowrite = false -- default: false

-- as 'autowrite', but works with more commands
opt.autowriteall = false -- default: false

-- "dark" or "light", used for highlight colors
opt.background = 'dark' -- default: 'dark'

-- how backspace works at start of line
opt.backspace = {'indent', 'eol', 'start'} -- default: {'indent', 'eol', 'start'}

-- keep backup file after overwriting a file
opt.backup = false -- default: false

-- make backup as a copy, don't rename the file
opt.backupcopy = 'auto' -- default: 'auto'

-- list of directories for the backup file
opt.backupdir = {'.', os.getenv('XDG_STATE_HOME') .. '/nvim/backup//'} -- default: {'.', os.getenv('XDG_STATE_HOME') .. '/nvim/backup//'}

-- extension used for the backup file
opt.backupext = '~' -- default: '~' 

-- no backup for files that match these patterns
opt.backupskip = {'/tmp/*','$TMPDIR/*','$TMP/*','$TEMP/*'} -- default: {'/tmp/*','$TMPDIR/*','$TMP/*','$TEMP/*'}

-- do not ring the bell for these reasons
opt.belloff = 'all' -- default: 'all'

-- read/write/edit file in binary mode
opt.binary = false -- default: false

-- prepend a Byte Order Mark to the file
opt.bomb = false -- default: false

-- characters that may cause a line break
opt.breakat = {' ', '^', 'I', '!', '@', '*', '-', '+', "'", ';', ':', ',', '.', '/', '?'} -- default: {' ', '^', 'I', '!', '@', '*', '-', '+', "'", ';', ':', ',', '.', '/', '?'}

-- wrapped line repeats indent
opt.breakindent = false -- default: false

-- settings for 'breakindent'
opt.breakindentopt = {} -- default: {}

-- which directory to start browsing in
opt.browsedir = 'last' -- default: 'last'

-- what to do when buffer is no longer in window
opt.bufhidden = '' -- default: ''

-- whether the buffer shows up in the buffer list
opt.buflisted = true -- default: true

-- special type of buffer
opt.buftype = '' -- default: ''

-- specifies how case of letters is changed
opt.casemap = {'internal', 'keepascii'} -- default: {'internal', 'keepascii'}

-- change directory to the home directory by ":cd"
opt.cdhome = false -- default: false

-- opt.cdpath = -- default: $CDPATH or ",," -- list of directories searched with ":cd"
-- opt.cedit = -- default: CTRL-F -- key used to open the command-line window

-- expression for character encoding conversion
opt.charconvert = '' -- default: ''

-- do C program indenting
opt.cindent = false -- default: false

-- keys that trigger indent when 'cindent' is set
opt.cinkeys = {'0{', '0}', '0)', '0]', ':', '0#', '!^F', 'o', 'O', 'e'} -- default: {'0{', '0}', '0)', '0]', ':', '0#', '!^F', 'o', 'O', 'e'}

-- how to do indenting when 'cindent' is set
opt.cinoptions = '' -- default: ''

-- words where 'si' and 'cin' add an indent
opt.cinwords = {'if', 'else', 'while', 'do', 'for', 'switch'} -- default: {'if', 'else', 'while', 'do', 'for', 'switch'}

-- words that are recognized by 'cino-g'
opt.cinscopedecls = {'public', 'protected', 'private'} -- default: {'public', 'protected', 'private'}

-- To ALWAYS use the OS clipboard for all operations
opt.clipboard = {'unnamedplus'} -- default: {}

-- number of lines to use for the command-line
opt.cmdheight = 1 -- default: 1

-- height of the command-line window
opt.cmdwinheight = 7 -- default: 7

-- columns to highlight
opt.colorcolumn = {} -- default: {}

-- opt.columns = -- default: 80 or terminal width -- number of columns in the display

-- patterns that can start a comment line
opt.comments = {'s1:/*', 'mb:*', 'ex:*/', '://,b:#', ':%,:XCOMM', 'n:>', 'fb:-'} -- default: {'s1:/*', 'mb:*', 'ex:*/', '://,b:#', ':%,:XCOMM', 'n:>', 'fb:-'}

-- template for comments; used for fold marker
opt.commentstring = '' -- default: ''

-- specify how Insert mode completion works
opt.complete = {'.', 'w', 'b', 'u', 't'} -- default: {'.', 'w', 'b', 'u', 't'}

-- opt.completefunc = -- default: empty -- function to be used for Insert mode completion

-- options for Insert mode completion
opt.completeopt = {'menu', 'preview'} -- default: {'menu', 'preview'}

-- opt.completeslash = '' -- default: '' -- like 'shellslash' for completion

-- whether concealable text is hidden in cursor line
opt.concealcursor = '' -- default: ''

-- whether concealable text is shown or hidden
opt.conceallevel = 0 -- default: 0

-- ask what to do about unsaved/read-only files
opt.confirm = false -- default: false

-- make 'autoindent' use existing indent structure
opt.copyindent = false -- default: false

-- flags for Vi-compatible behavior
opt.cpoptions = 'aABceFs_' -- default: 'aABceFs_'

-- move cursor in window as it moves in other windows
opt.cursorbind = false -- default: false

-- highlight the screen column of the cursor
opt.cursorcolumn = false -- default: false

-- highlight the screen line of the cursor
opt.cursorline = false -- default: false

-- settings for 'cursorline'
opt.cursorlineopt = {'number', 'line'} -- default: {'number', 'line'}

-- set to "msg" to see all error messages
opt.debug = '' -- default: ''

-- pattern to be used to find a macro definition
opt.define = '^\\s*#\\s*define' -- default: '^\s*#\s*define'

-- delete combining characters on their own
opt.delcombine = false -- default: false

-- list of file names used for keyword completion
opt.dictionary = {} -- default: {}

-- use diff mode for the current window
opt.diff = false -- default: false

-- expression used to obtain a diff file
opt.diffexpr = '' -- default: ''

-- options for using diff mode
opt.diffopt = {'internal', 'filler', 'closeoff'} -- default: {'internal', 'filler', 'closeoff'}

-- enable the entering of digraphs in Insert mode
opt.digraph = false -- default: false

-- list of directory names for the swap file
opt.directory = '$XDG_STATE_HOME/nvim/swap//' -- default: '$XDG_STATE_HOME/nvim/swap//'

-- list of flags for how to display text
opt.display = 'lastline' -- default:  'lastline'

-- in which direction 'equalalways' works
opt.eadirection = 'both' -- default: 'both'

-- opt.encoding = -- default: -- encoding used internally

-- write CTRL-Z at end of the file
opt.endoffile = false -- default: false

-- write <EOL> for last line in file
opt.endofline = true -- default: true

-- windows are automatically made the same size
opt.equalalways = true -- default: true

-- external program to use for "=" command
opt.equalprg = '' -- default: ''

-- ring the bell for error messages
opt.errorbells = false -- default: false

-- name of the errorfile for the QuickFix mode
opt.errorfile = 'errors.err' -- default: 'errors.err'

-- opt.errorformat = -- default: -- description of the lines in the error file

-- autocommand events that are ignored
opt.eventignore = {} -- default: {}

-- use spaces when <Tab> is inserted
opt.expandtab = false -- default: false

-- read init files in the current directory
opt.exrc = false -- default: false

-- file encoding for multibyte text
opt.fileencoding = '' -- default: ''

-- automatically detected character encodings
opt.fileencodings = {'ucs-bom', 'utf-8', 'default', 'latin1'} -- default: {'ucs-bom', 'utf-8', 'default', 'latin1'}

-- opt.fileformat = -- default: (Windows: "dos", Unix: "unix") -- file format used for file I/O
-- opt.fileformats = -- default: (Win32: "dos,unix", Unix: "unix,dos") -- automatically detected values for 'fileformat'
-- opt.fileignorecase = -- default: -- ignore case when using file names

-- type of file, used for autocommands
opt.filetype = '' -- default: ''

-- characters to use for displaying special items
opt.fillchars = {} -- default: { stl = ' ', stlnc = ' ', wbr = ' ', horiz = '─', horizup = '┴', horizdown = '┬', vert = '│', vertleft = '┤', vertright = '├', verthoriz = '┼', fold = '·', foldopen = '-', foldclose = '+', foldsep = '│', diff = '-', msgsep = ' ', eob = '~', lastline = '@' }

-- make sure last line in file has <EOL>
opt.fixendofline = true -- default: true

-- close a fold when the cursor leaves it
opt.foldclose = '' -- default: ''

-- width of the column used to indicate folds
opt.foldcolumn = '0' -- default: '0'

-- set to display all folds open
opt.foldenable = true -- default:  true

-- expression used when 'foldmethod' is "expr"
opt.foldexpr = '0' -- default: '0'

-- ignore lines when 'foldmethod' is "indent"
opt.foldignore = '#' -- default: '#'

-- close folds with a level higher than this
opt.foldlevel = 0 -- default: 0

-- 'foldlevel' when starting to edit a file
opt.foldlevelstart = -1 -- default: -1

-- markers used when 'foldmethod' is "marker"
opt.foldmarker = '{{{,}}}' -- default: '{{{,}}}'

-- folding type
opt.foldmethod = 'manual' -- default: 'manual'

-- minimum number of lines for a fold to be closed
opt.foldminlines = 1 -- default: 1

-- maximum fold depth
opt.foldnestmax = 20 -- default: 20

-- for which commands a fold will be opened
opt.foldopen = {'block', 'hor', 'mark', 'percent', 'quickfix', 'search', 'tag', 'undo'} -- default: {'block', 'hor', 'mark', 'percent', 'quickfix', 'search', 'tag', 'undo'}

-- expression used to display for a closed fold
opt.foldtext = 'foldtext()' -- default: 'foldtext()'

-- expression used with "gq" command
opt.formatexpr = '' -- default: ''

-- pattern used to recognize a list header
opt.formatlistpat = '^\\s*\\d\\+[\\]:.)}\t ]\\s*' -- default: '^\\s*\\d\\+[\\]:.)}\t ]\\s*'

-- how automatic formatting is to be done
opt.formatoptions = 'tcqj' -- default: 'tcqj'

-- name of external program used with "gq" command
opt.formatprg = '' -- default: ''

-- whether to invoke fsync() after file write
opt.fsync = true -- default: true

-- the ":substitute" flag 'g' is default on
opt.gdefault = false -- default: false

-- format of 'grepprg' output
opt.grepformat = '%f:%l:%m,%f:%l%m,%f  %l%m' -- default: '%f:%l:%m,%f:%l%m,%f  %l%m'

-- program to use for ":grep"
opt.grepprg = 'grep -n $* /dev/null' -- default: 'grep -n $* /dev/null'

-- GUI: settings for cursor shape and blinking
opt.guicursor = {'n-v-c-sm:block', 'i-ci-ve:ver25', 'r-cr-o:hor20'} -- default: {'n-v-c-sm:block', 'i-ci-ve:ver25', 'r-cr-o:hor20'}

-- GUI: Name(s) of font(s) to be used
opt.guifont = {} -- default: {}

-- list of font names for double-wide characters
opt.guifontwide = {} -- default: {}

-- opt.guioptions = -- default: -- GUI: Which components and options are used (MS-Windows only)
-- opt.guitablabel = -- default: empty -- GUI: custom label for a tab page

-- opt.guitabtooltip = -- default: empty -- GUI: custom tooltip for a tab page
-- opt.helpfile = -- default: (MS-Windows:"$VIMRUNTIME\doc\help.txt", others:"$VIMRUNTIME/doc/help.txt") -- full path name of the main help file

-- minimum height of a new help window
opt.helpheight = 20 -- default: 20

-- preferred help languages
opt.helplang = '' -- default: messages language or empty

-- don't unload buffer when it is abandoned
opt.hidden = true -- default: true

-- highlight matches with last search pattern
opt.hlsearch = true -- default: true

-- number of command-lines that are remembered
opt.history = 10000 -- default: 10000

-- opt.hkmap = -- default: -- Hebrew keyboard mapping
-- opt.hkmapp = -- default: -- phonetic Hebrew keyboard mapping

-- let Vim set the text of the window icon
opt.icon = false -- default: false

-- string to use for the Vim icon text
opt.iconstring = '' -- default: ''

-- ignore case in search patterns
opt.ignorecase = false -- default: false

-- use IM when starting to edit a command line
opt.imcmdline = false -- default: false

-- opt.imdisable = false -- default: false, true for some systems SGI/IRIX -- do not use the IM in any mode

-- use :lmap or IM in Insert mode
opt.iminsert = 0 -- default: 0

-- use :lmap or IM when typing a search pattern
opt.imsearch = -1 -- default: -1

-- show preview of :substitute, :smagic, :snomagic command
opt.inccommand = 'nosplit' -- default: 'nosplit'

-- pattern to be used to find an include file
opt.include = '^\\s*#\\s*include' -- default: '^\\s*#\\s*include'

-- expression used to process an include line
opt.includeexpr = '' -- default: ''

-- highlight match while typing search pattern
opt.incsearch = true -- default: true

-- expression used to obtain the indent of a line
opt.indentexpr = '' -- default: ''

-- keys that trigger indenting with 'indentexpr'
opt.indentkeys = {'0{', '0}', '0)', '0]', ':', '0#', '!^F', 'o', 'O', 'e'} -- default: {'0{', '0}', '0)', '0]', ':', '0#', '!^F', 'o', 'O', 'e'}

-- adjust case of match for keyword completion
opt.infercase = false -- default: false

-- opt.isfname = -- default: (Windows:"@,48-57,/,\,.,-,_,+,,,#,$,%,{,},[,],:,@-@,!,~,=", otherwise:"@,48-57,/,.,-,_,+,,,#,$,%,~,=") -- characters included in file names and pathnames
-- opt.isident = -- default: (Windows:"@,48-57,_,128-167,224-235", otherwise:"@,48-57,_,192-255") -- characters included in identifiers

-- characters included in keywords
opt.iskeyword = {'@', '48-57' , '_', '192-255'} -- default: {'@', '48-57' , '_', '192-255'}

-- printable characters
opt.isprint = {'@', '161-255'} -- default: {'@', '161-255'}

-- two spaces after a period with a join command
opt.joinspaces = false -- default: false

-- specifies how jumping is done
opt.jumpoptions = '' -- default: ''

-- name of a keyboard mapping
opt.keymap = '' -- default: ''

-- enable starting/stopping selection with keys
opt.keymodel = {} -- default: {}

-- opt.keywordprg = -- default: (Windows:":help",other:":Man") -- program to use for the "K" command

-- alphabetic characters for other language mode
opt.langmap = '' -- default: ''

-- language to be used for the menus
opt.langmenu = '' -- default: ''

-- do apply 'langmap' to mapped characters
opt.langremap = false -- default: false

-- tells when last window has status lines
opt.laststatus = 2 -- default: 2

-- don't redraw while executing macros
opt.lazyredraw = false -- default: false

-- wrap long lines at a blank
opt.linebreak = false -- default: false

-- opt.lines = -- default: 24 or terminal height -- number of lines in the display

-- number of pixel lines to use between characters
opt.linespace = 0 -- default: 0

-- automatic indenting for Lisp
opt.lisp = false -- default: false

-- changes how Lisp indenting is done
opt.lispoptions = {} -- default: {}

-- opt.lispwords = -- default: -- words that change how lisp indenting works

-- show <Tab> and <EOL>
opt.list = true -- default: false

-- characters for displaying in list mode
opt.listchars = {tab = '> ', trail = '-', nbsp = '+'} -- default: {tab = '> ', trail = '-', nbsp = '+'}

-- load plugin scripts when starting up
opt.loadplugins = true -- default: true

-- changes special characters in search patterns
opt.magic = true -- default: true

-- name of the errorfile for ":make"
opt.makeef = '' -- default: ''

-- encoding of external make/grep commands
opt.makeencoding = '' -- default: ''

-- program to use for the ":make" command
opt.makeprg = 'make' -- default: 'make'

-- pairs of characters that "%" can match
opt.matchpairs = {'(:)', '{:}', '[:]'} -- default: {'(:)', '{:}', '[:]'}

-- tenths of a second to show matching paren
opt.matchtime = 5 -- default: 5

-- opt.maxcombine = -- default: -- maximum nr of combining characters displayed

-- maximum recursive depth for user functions
opt.maxfuncdepth = 100 -- default: 100

-- maximum recursive depth for mapping
opt.maxmapdepth = 1000 -- default: 1000

-- maximum memory (in Kbyte) used for pattern search
opt.maxmempattern = 1000 -- default: 1000

-- maximum number of items in a menu
opt.menuitems = 25 -- default: 25

-- memory used before :mkspell compresses the tree
opt.mkspellmem = '460000,2000,500' -- default: '460000,2000,500'

-- opt.modeline = -- default: on (off for root) -- recognize modelines at start or end of file

-- allow setting expression options from a modeline
opt.modelineexpr = false -- default: false

-- number of lines checked for modelines
opt.modelines = 5 -- default: 5

-- changes to the text are not possible
opt.modifiable = true -- default: true

-- buffer has been modified
opt.modified = false -- default: false

-- pause listings when the whole screen is filled
opt.more = true -- default: true

-- enable the use of mouse clicks
opt.mouse = 'a' -- default: 'a'

-- keyboard focus follows the mouse
opt.mousefocus = false -- default: false

-- hide mouse pointer while typing
opt.mousehide = true -- default: true

-- changes meaning of mouse buttons
opt.mousemodel = 'popup_setpos' -- default: 'popup_setpos'

-- report mouse moves with <MouseMove>
opt.mousemoveevent = false -- default: false

-- amount to scroll by when scrolling with a mouse
opt.mousescroll = {'ver:3', 'hor:6'} -- default: {'ver:3', 'hor:6'}

-- shape of the mouse pointer in different modes
opt.mouseshape = {i = 'beam', r = 'beam', s = 'updown', sd = 'cross', m = 'no', ml = 'up-arrow', v = 'rightup-arrow'} -- default: {i = 'beam', r = 'beam', s = 'updown', sd = 'cross', m = 'no', ml = 'up-arrow', v = 'rightup-arrow'}

-- max time between mouse double-click
opt.mousetime = 500 -- default: 500

-- number formats recognized for CTRL-A command
opt.nrformats = {'bin', 'hex'} -- default: {'bin', 'hex'}

-- print the line number in front of each line
opt.number = false -- default: false

-- number of columns used for the line number
opt.numberwidth = 4 -- default: 4

-- opt.omnifunc = -- default: empty -- function for filetype-specific completion

-- allow reading/writing devices on MS-Windows
opt.opendevice = false -- default: false

-- opt.operatorfunc = -- default: empty -- function to be called for g@ operator
-- opt.packpath = -- default: see 'runtimepath' -- list of directories used for packages

-- nroff macros that separate paragraphs
opt.paragraphs = 'IPLPPPQPP TPHPLIPpLpItpplpipbp' -- default: 'IPLPPPQPP TPHPLIPpLpItpplpipbp'

-- expression used to patch a file
opt.patchexpr = '' -- default: ''

-- keep the oldest version of a file
opt.patchmode = '' -- default: ''

-- opt.path = -- default: (Unix: {'.','/usr/include',','}, other: {'.',','}) -- list of directories searched with "gf" et.al.

-- preserve the indent structure when reindenting
opt.preserveindent = false -- default: false

-- height of the preview window
opt.previewheight = 12 -- default: 12

-- opt.previewpopup = -- default: -- use popup window for preview

-- identifies the preview window
opt.previewwindow = false -- default: false

-- Enables pseudo-transparency for the popup-menu
opt.pumblend = 0 -- default: 0

-- maximum number of items to show in the popup menu
opt.pumheight = 0 -- default: 0

-- minimum width of the popup menu
opt.pumwidth = 15 -- default: 15

-- Python version used for pyx* commands
opt.pyxversion = 3 -- default: 3

-- function to be used to get the quickfix
opt.quickfixtextfunc = '' -- default: ''

-- escape characters used in a string
opt.quoteescape = '\\' -- default: '\\'

-- disallow writing the buffer
opt.readonly = false -- default: false

-- change the way redrawing works, for debugging purposes
opt.redrawdebug = '' -- default: ''

-- timeout for 'hlsearch' and :match highlighting
opt.redrawtime = 2000 -- default: 2000

-- default regexp engine to use
opt.regexpengine = 0 -- default: 0

-- show relative line number in front of each line
opt.relativenumber = false -- default: false

-- threshold for reporting nr. of lines changed
opt.report = 2 -- default: 2

-- inserting characters will work backwards
opt.revins = false -- default: false

-- window is right-to-left oriented
opt.rightleft = false -- default: false

-- commands for which editing works right-to-left
opt.rightleftcmd = 'search' -- default: 'search'

-- show cursor line and column in the status line
opt.ruler = true -- default: true

-- custom format for the ruler
opt.rulerformat = '' -- default: ''

-- opt.runtimepath = -- default: too long... -- list of directories used for runtime files

-- opt.scroll = -- default: half the window height -- lines to scroll with CTRL-U and CTRL-D

-- scroll in window as other windows scroll
opt.scrollbind = false -- default: false

-- minimum number of lines to scroll
opt.scrolljump = 1 -- default: 1

-- minimum nr. of lines above and below cursor
opt.scrolloff = 0 -- default: 0

-- how 'scrollbind' should behave
opt.scrollopt = {'ver', 'jump'} -- default: {'ver', 'jump'}

-- nroff macros that separate sections
opt.sections = 'SHNHH HUnhsh' -- default: 'SHNHH HUnhsh'

-- opt.secure = -- default: -- secure mode for reading .vimrc in current dir

-- what type of selection to use
opt.selection = 'inclusive' -- default: 'inclusive'

-- when to use Select mode instead of Visual mode
opt.selectmode = {} -- default: {}

-- options for :mksession
opt.sessionoptions = {'blank', 'buffers', 'curdir', 'folds', 'help', 'tabpages', 'winsize', 'terminal'} -- default: {'blank', 'buffers', 'curdir', 'folds', 'help', 'tabpages', 'winsize', 'terminal'}

-- opt.shada = -- default: -- use .shada file upon startup and exiting
-- opt.shadafile = '' -- default: '' -- overrides the file name used for 'shada'
-- opt.shell = -- default: (Unix:$SHELL or "sh", Win32:"cmd.exe") -- name of shell to use for external commands
-- opt.shellcmdflag = -- default: (Windows: "/s /c", other:"-c") -- flag to shell to execute one command
-- opt.shellpipe = -- default: -- string to put output of ":make" in error file
-- opt.shellquote = -- default: -- quote character(s) for around shell command
-- opt.shellredir = -- default: -- string to put output of filter in a temp file

-- use forward slash for shell file names (MS-Windows only)
opt.shellslash = false -- default: false

-- whether to use a temp file for shell commands
opt.shelltemp = true -- default: true

-- characters to escape when 'shellxquote' is (
opt.shellxescape = '' -- default: ''

-- opt.shellxquote = -- default: -- like 'shellquote', but include redirection

-- round indent to multiple of shiftwidth
opt.shiftround = false -- default: false

-- number of spaces to use for (auto)indent step
opt.shiftwidth = 8 -- default: 8

-- list of flags, reduce length of messages
opt.shortmess = 'filnxtToOF' -- default: 'filnxtToOF'

-- string to use at the start of wrapped lines
opt.showbreak = '' -- default: ''

-- show (partial) command somewhere
opt.showcmd = true -- default: true

-- where to show (partial) command
opt.showcmdloc = 'last' -- default: 'last'

-- show full tag pattern when completing tag
opt.showfulltag = false -- default: false

-- briefly jump to matching bracket if insert one
opt.showmatch = false -- default: false

-- message on status line to show current mode
opt.showmode = true -- default: true

-- tells when the tab pages line is displayed
opt.showtabline = 1 -- default: 1

-- minimum number of columns to scroll horizontal
opt.sidescroll = 1 -- default: 1

-- min. nr. of columns to left and right of cursor
opt.sidescrolloff = 0 -- default: 0

-- when and how to display the sign column
opt.signcolumn = 'auto' -- default: 'auto'

-- no ignore case when pattern has uppercase
opt.smartcase = false -- default: false

-- smart autoindenting for C programs
opt.smartindent = false -- default: false

-- use 'shiftwidth' when inserting <Tab>
opt.smarttab = true -- default: true

-- number of spaces that <Tab> uses while editing
opt.softtabstop = 0 -- default: 0

-- enable spell checking
opt.spell = false -- default: false

-- pattern to locate end of a sentence
opt.spellcapcheck = '[.?!]\\_[\\])\'" \\t]\\+' -- default: '[.?!]\\_[\\])\'" \\t]\\+'

-- opt.spellfile = -- default: -- files where zg and zw store words

-- language(s) to do spell checking for
opt.spelllang = {'en', 'it'} -- default: {'en', 'it'}

-- options for spell checking
opt.spelloptions = '' -- default: ''

-- method(s) used to suggest spelling corrections
opt.spellsuggest = 'best' -- default: 'best'

-- new window from split is below the current one
opt.splitbelow = false -- default: false

-- determines scroll behavior for split windows
opt.splitkeep = 'cursor' -- default: 'cursor'

-- new window is put right of the current one
opt.splitright = false -- default: false

-- commands move cursor to first non-blank in line
opt.startofline = false -- default: false

-- opt.statuscolumn = -- default: -- custom format for the status column
-- opt.statusline = -- default: -- custom format for the status line

-- suffixes that are ignored with multiple match
opt.suffixes = {'.bak', '~', '.o', '.h', '.info', '.swp', '.obj'} -- default: {'.bak', '~', '.o', '.h', '.info', '.swp', '.obj'}

-- suffixes added when searching for a file
opt.suffixesadd = '' -- default: ''

-- whether to use a swapfile for a buffer
opt.swapfile = true -- default: true

-- sets behavior when switching to another buffer
opt.switchbuf = 'uselast' -- default: 'uselast'

-- maximum column to find syntax items
opt.synmaxcol = 3000 -- default: 3000

-- opt.syntax = -- default: -- syntax to be loaded for current buffer
-- opt.tabline = -- default: -- custom format for the console tab pages line

-- maximum number of tab pages for -p and "tab all"
opt.tabpagemax = 50 -- default: 50

-- number of spaces that <Tab> in file uses
opt.tabstop = 8 -- default: 8

-- use binary searching in tags files
opt.tagbsearch = true -- default: true

-- how to handle case when searching in tags files
opt.tagcase = 'followic' -- default: 'followic'

-- opt.tagfunc = -- default: -- function to get list of tag matches

-- number of significant characters for a tag
opt.taglength = 0 -- default: 0

-- file names in tag file are relative
opt.tagrelative = true -- default: true

-- list of file names used by the tag command
opt.tags = {'./tags;', 'tags'} -- default: {'./tags;', 'tags'}

-- push tags onto the tag stack
opt.tagstack = true -- default: true

-- opt.term = -- default: -- name of the terminal

-- terminal takes care of bi-directionality
opt.termbidi = false -- default: false

-- Enables 24-bit RGB color in the TUI
opt.termguicolors = false -- default: false

-- specifying control characters to be removed from the text pasted into the window
opt.termpastefilter = {'BS', 'HT', 'ESC', 'DEL'} -- default: {'BS', 'HT', 'ESC', 'DEL'}

-- maximum width of text that is being inserted
opt.textwidth = 0 -- default: 0

-- list of thesaurus files for keyword completion
opt.thesaurus = '' -- default: ''

-- opt.thesaurusfunc = -- default: -- function to be used for thesaurus completion

-- tilde command "~" behaves like an operator
opt.tildeop = false -- default: false

-- time out on mappings and key codes
opt.timeout = true -- default: true

-- Time in milliseconds to wait for a mapped sequence to complete
opt.timeoutlen = 1000 -- default: 1000

-- let Vim set the title of the window
opt.title = false -- default: false

-- percentage of 'columns' used for window title
opt.titlelen = 85 -- default: 85

-- old title, restored when exiting
opt.titleold = '' -- default: ''

-- string to use for the Vim window title
opt.titlestring = '' -- default: ''

-- determine the behavior when part of a key code sequence has been received
opt.ttimeout = true -- default: true

-- Time in milliseconds to wait for a key code sequence to complete
opt.ttimeoutlen = 50 -- default: 50

-- opt.ttytype = -- default: -- alias for 'term'

-- where to store undo files
opt.undodir = '$XDG_STATE_HOME/nvim/undo//' -- default: '$XDG_STATE_HOME/nvim/undo//'

-- save undo information in a file
opt.undofile = false -- default: false

-- maximum number of changes that can be undone
opt.undolevels = 1000 -- default: 1000

-- max nr of lines to save for undo on a buffer reload
opt.undoreload = 10000 -- default: 10000

-- after this many characters flush swap file
opt.updatecount = 200 -- default: 200

-- after this many milliseconds flush swap file
opt.updatetime = 4000 -- default: 4000

-- a list of number of spaces when typing <Tab>
opt.varsofttabstop = {} -- default: {}

-- a list of number of spaces for <Tab>s
opt.vartabstop = {''} -- default: {''}

-- give informative messages
opt.verbose = 0 -- default: 0

-- opt.verbosefile = -- default: empty -- file to write messages in

-- directory where to store files with :mkview
opt.viewdir = '$XDG_STATE_HOME/nvim/view//' -- default: '$XDG_STATE_HOME/nvim/view//'

-- specifies what to save for :mkview
opt.viewoptions = {'folds', 'cursor', 'curdir'} -- default: {'folds', 'cursor', 'curdir'}

-- when to use virtual editing
opt.virtualedit = {''} -- default: {''}

-- use visual bell instead of beeping
opt.visualbell = false -- default: false

-- warn for shell command when buffer was changed
opt.warn = true -- default: true

-- allow specified keys to cross line boundaries
opt.whichwrap = 'b,s' -- default: 'b,s'

-- opt.wildchar = -- default: <Tab> -- command-line character for wildcard expansion
-- opt.wildcharm = -- default: none -- like 'wildchar' but also works when mapped

-- files matching these patterns are not completed
opt.wildignore = {''} -- default: {''}

-- ignore case when completing file names
opt.wildignorecase = false -- default: false

-- use menu for command line completion
opt.wildmenu = true -- default: true

-- mode for 'wildchar' command-line expansion
opt.wildmode = 'full' -- default: 'full'

-- specifies how command line completion is done
opt.wildoptions = {'pum', 'tagfile'} -- default: {'pum', 'tagfile'}

-- when the windows system handles ALT keys
opt.winaltkeys = 'menu' -- default: 'menu'

-- opt.winbar = -- default: empty -- enables the window bar and determines its contents

-- Enables pseudo-transparency for a floating window
opt.winblend = 0 -- default: 0

-- opt.window = -- default: default screen height - 1 -- nr of lines to scroll for CTRL-F and CTRL-B

-- minimum number of lines for the current window
opt.winheight = 1 -- default: 1

-- window-local highlighting
opt.winhighlight = {} -- default: {}

-- keep window height when opening/closing windows
opt.winfixheight = false -- default: false

-- keep window width when opening/closing windows
opt.winfixwidth = false -- default: false

-- minimum number of lines for any window
opt.winminheight = 1 -- default: 1

-- minimal number of columns for any window
opt.winminwidth = 1 -- default: 1

-- minimal number of columns for current window
opt.winwidth = 20 -- default: 20

-- long lines wrap and continue on the next line
opt.wrap = true -- default: true

-- chars from the right where wrapping starts
opt.wrapmargin = 0 -- default: 0

-- searches wrap around the end of the file
opt.wrapscan = true -- default: true

-- writing to a file is allowed
opt.write = true -- default: true

-- write to file with no need for "!" override
opt.writeany = false -- default: false

-- make a backup before overwriting a file
opt.writebackup = true -- default: true

-- delay this many msec for each char (for debug)
opt.writedelay = 0 -- default: 0

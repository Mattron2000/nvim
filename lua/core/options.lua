-- [[ OPTION ]]
--   See `:h option-list` for a exaustive options list

local o = vim.o -- for conciseness

-- To see the specific description of all options down below,
-- Pick the `OPTION-NAME` between `o.` and `=` and type in Neovim `:h 'OPTION-NAME'`

-- To ALWAYS use the OS clipboard for ALL operations
o.clipboard = 'unnamedplus' -- default: ''

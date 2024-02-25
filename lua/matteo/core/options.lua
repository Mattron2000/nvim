-- [[ OPTION ]]
--   See `:h option-list` for a exaustive options list

local opt = vim.opt -- for conciseness

-- To see the specific description of all options down below,
-- Pick the `OPTION-NAME` between `opt.` and `=` and type in Neovim `:h 'OPTION-NAME'`

-- To ALWAYS use the OS clipboard for ALL operations
opt.clipboard = 'unnamedplus' -- default: ''

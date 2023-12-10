-- [[ GLOBAL ]]

local g = vim.g -- for conciseness

-- Setup providers
--   See `:h provider`

-- Python 3 $VIRTUAL_ENV support
local handle = io.popen 'which python3'
if handle == nil then
    error 'This command "which python3" gives nothing, instead of python path.'
end
local output = handle:read '*a'
local python_path = output:gsub('[\n\r]', '')
handle:close()

g.python3_host_prog = python_path -- `:h provider-python`

g.loaded_ruby_provider = 0 -- `:h provider-ruby` -- DISABLED
g.loaded_perl_provider = 0 -- `:h provider-perl` -- DISABLED

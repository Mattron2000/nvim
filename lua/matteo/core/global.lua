-- [[ GLOBAL ]]

local g = vim.g -- for conciseness

-- Setup providers
--   See `:h provider`

-- Find Python 3 interpreter path (support $VIRTUAL_ENV)
local function find_python3()
    local process = io.popen 'which python3'
    if not process then return nil end
    local output = process:read '*a'
    process:close()
    return output:gsub('%s', '') -- Remove whitespaces from the output
end

-- Set Python 3 interpreter path
local python_path = find_python3()
if not python_path then error "Couldn't find Python 3 executable." end

-- Python provider
g.python3_host_prog = python_path -- `:h provider-python`

-- Ruby provider
g.loaded_ruby_provider = 0        -- DISABLED -- `:h provider-ruby`

-- Perl provider
g.loaded_perl_provider = 0        -- DISABLED -- `:h provider-perl`

-- nvim-dap
local map_lua = vim.keymap.set
local dap = require('dap')
--local codelldb_path = extension_path .. 'adapter/codelldb'
--local liblldb_path = extension_path .. 'lldb/lib/liblldb.so'
-- Set debug signs
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointCondition', {text='❓', texthl='', linehl='', numhl=''})
map_lua('n', '<Leader>db', dap.toggle_breakpoint, {desc = 'Add debug breakpoint'})
map_lua('n', '<Leader>dc', dap.continue, {desc = 'Debug continue'})
map_lua('n', '<Leader>dd', dap.step_into, {desc = 'Debug decend/step into'})
map_lua('n', '<Leader>ds', dap.step_over, {desc = 'Debug step over'})

-- nvim-dap-go
require('dap-go').setup()

--dap.configurations.rust = {
--  {
--    name = 'Launch',
--    type = 'lldb',
--    request = 'launch',
--    program = function()
--      return vim.fn.input(codelldb_path, vim.fn.getcwd() .. '/', 'file')
--    end,
--    cwd = '${workspaceFolder}',
--    stopOnEntry = false,
--    args = {},
--
--    -- 💀
--    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
--    --
--    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--    --
--    -- Otherwise you might get the following error:
--    --
--    --    Error on launch: Failed to attach to the target process
--    --
--    -- But you should be aware of the implications:
--    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
--    -- runInTerminal = false,
--  },
--}

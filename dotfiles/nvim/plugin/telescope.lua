-- Using Lua functions
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
map('n', '<Leader>ff', ':Telescope find_files<cr>', {desc = 'fuzzy find files'})
map('n', '<Leader>fg', ':Telescope live_grep<cr>', {desc = 'fuzzy grep'})
map('n', '<Leader>fb', ':Telescope buffers<cr>', {desc = 'fuzzy find buffers'})
map('n', '<Leader>fh', ':Telescope help_tags<cr>', {desc = 'fuzzy find help tags'})
map('n', '<Leader>fo', ':Telescope vim_options<cr>', {desc = 'fuzzy find vim options'})
map('n', '<Leader>fs', ':Telescope current_buffer_fuzzy_find<cr>', {desc = 'fuzzy search in buffer'})

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

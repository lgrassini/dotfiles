require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "./.git/", "node_modules/", "vendor/" },
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
    find_files = {
        disable_devicons = true
    },
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

vim.keymap.set('n', '<leader>g', require"telescope.builtin".git_files, {remap = false})
vim.keymap.set('n', '<leader>p', require"telescope.builtin".find_files, {remap = false})
vim.keymap.set('n', '<leader>b', require"telescope.builtin".buffers, {remap = false})
vim.keymap.set('n', '<leader>f', require"telescope.builtin".live_grep, {remap = false})
vim.keymap.set('n', '<leader>t', require"telescope.builtin".treesitter, {remap = false})
vim.keymap.set('n', '<leader>gs', require"telescope.builtin".git_status, {remap = false})

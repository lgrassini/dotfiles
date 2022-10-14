-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- Mappings.

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>', ':Neotree<CR>', opts)

--
-- Mappings.

local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space><space>x', '<Plug>JupyterExecute', opts)
vim.keymap.set('n', '<space><space>X', '<Plug>JupyterExecuteAll', opts)
--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
--vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)


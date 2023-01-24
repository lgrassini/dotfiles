-- init.lua

-- Globals
vim.g.mapleader = " "

-- Plugins and plugin configuration
require("plugins")

-- Options
local options = vim.o

options.number = true
options.relativenumber = true

-- Tab & indent
options.expandtab = true
options.tabstop = 4
options.softtabstop = 4
options.shiftwidth = 4
options.smartindent = true
options.list = true

options.ignorecase = true
options.scrolloff = 4

-- Appearance
vim.cmd("colorscheme oxocarbon")
vim.cmd("set cc=99")
vim.cmd("hi ColorColumn ctermbg=grey guibg=#333333")

-- Clipboard
vim.cmd("set clipboard=unnamedplus")

-- press <Tab> to expand or jump in a snippet. These can also be mapped separately
-- via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.

--imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 

-- -1 for jumping backwards.
--inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

--snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
--snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

-- For changing choices in choiceNodes (not strictly necessary for a basic setup).
--imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
--smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

-- TODO: move this to anew file like after/jupyter-ascending.lua
-- nmap <space><space>x <Plug>JupyterExecute
-- nmap <space><space>X <Plug>JupyterExecuteAll


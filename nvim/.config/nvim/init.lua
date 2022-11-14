-- init.lua

-- Globals
vim.g.mapleader = " "

-- Options
vim.o.number = true
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.list = true

-- Appearance
vim.cmd("colorscheme oxocarbon")
vim.cmd("set cc=99")
vim.cmd("hi ColorColumn ctermbg=grey guibg=#333333")

-- Clipboard
vim.cmd("set clipboard=unnamedplus")

-- Plugins and plugin configuration
require("plugins")


-- TODO: move this to anew file like after/jupyter-ascending.lua
-- nmap <space><space>x <Plug>JupyterExecute
-- nmap <space><space>X <Plug>JupyterExecuteAll


-- Set the color of all line numbers
--vim.api.nvim_set_hl(0, 'LineNr', { fg = '#ff0000' }) -- Example: gray

-- Set the color of the current line number

-- Set colors for relative line numbers (if enabled)
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#AAAAAA' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#BBBBBB' })
vim.cmd('set cursorline')
-- vim.cmd('colorscheme hexcolorscheme')
-- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = 'white', bold = true })
-- source hexcolorscheme.vim
-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('nvim-treesitter/nvim-treesitter')--improved syntax
Plug 'nvim-lualine/lualine.nvim' -- status line
Plug 'nvim-tree/nvim-web-devicons'
Plug 'MeanderingProgrammer/render-markdown.nvim' --render md inline
Plug('uZer/pywal16.nvim', { [ 'as' ] = 'pywal16' }) --or, pywal colorscheme
Plug('norcalli/nvim-colorizer.lua') 
vim.call('plug#end')
vim.cmd('syntax reset')
local pywal16 = require('pywal16')

pywal16.setup()
--vim.cmd('syntax reset')

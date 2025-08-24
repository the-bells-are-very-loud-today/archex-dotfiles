-- Set the color of all line numbers
--vim.api.nvim_set_hl(0, 'LineNr', { fg = '#ff0000' }) -- Example: gray

-- Set the color of the current line number

-- Set colors for relative line numbers (if enabled)
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#AAAAAA' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#BBBBBB' })
vim.cmd('set cursorline')
vim.cmd('colorscheme hexcolorscheme')
-- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = 'white', bold = true })
-- source hexcolorscheme.vim

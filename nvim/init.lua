-- Set the color of all line numbers
--vim.api.nvim_set_hl(0, 'LineNr', { fg = '#ff0000' }) -- Example: gray

-- Set the color of the current line number
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = 'white', bold = true })

-- Set colors for relative line numbers (if enabled)
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#AAAAAA' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#BBBBBB' })
vim.cmd('colorscheme hexcolorscheme')
-- source hexcolorscheme.vim

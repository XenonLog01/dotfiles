local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/Appdata/Local/nvim/plugged')

Plug 'kyazdani42/nvim-tree.lua'     -- File explorer
Plug 'nvim-lualine/lualine.nvim'    -- Status Line

-- Languages
Plug 'alaviss/nim.nvim'

-- Colors
Plug 'folke/tokyonight.nvim'
Plug 'morhetz/gruvbox'

vim.call('plug#end')

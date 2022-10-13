nmap = function(prev, new)
    vim.api.nvim_set_keymap('n', prev, new, {noremap=true, silent=true})
end

-- Tab behavior
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true

-- Indentation
vim.bo.autoindent = true
vim.bo.smartindent = true

vim.wo.number = true -- Line numbers

vim.wo.foldenable = false

-- Searching
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.hlsearch = true

-- Remap some keys:
nmap('<C-.>', '<C-W>>')
nmap('<C-,>', '<C-W><')
nmap('<C-->', '<C-W>-')
nmap('<C-=>', '<C-W>+')

-- Plugins:
require('plugins')

vim.cmd("colorscheme tokyonight")
-- vim.cmd("colorscheme gruvbox") -- Backup Colorscheme

require("nvim-tree").setup {
    disable_netrw = false,
    open_on_setup = true,
    open_on_setup_file = true,
    renderer = {
        indent_markers = {
            enable = true
        },
        icons = {
            glyphs = {
                default = "📄",
                bookmark = "🔖",
                folder = {
                    arrow_closed = ">",
                    arrow_open = "V",
                    default = "📁",
                    open = "📂",
                    empty = "📁",
                    empty_open = "📂",
                }
            }
        }
    }
}

require('lualine').setup {
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
}


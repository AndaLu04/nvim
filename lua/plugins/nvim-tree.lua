-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    open_on_setup = true,
    open_on_setup_file = true,
  },
  config = function()
    require('nvim-tree').setup {}
    vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>')
  end,
}

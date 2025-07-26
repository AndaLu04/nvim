local toggleterm = require("toggleterm")

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    vim.keymap.set('n', '<leader>tc', function ()
    	toggleterm.
    end),
    dir = 'git_dir',
    direction = 'float',
    float_opts = {
      border = 'double',
    },
  },
}

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    vim.keymap.set('n', '<leader>tc', '<CMD>lua toggleterm:toggle()<CR>'),
    dir = 'git_dir',
    direction = 'float',
    float_opts = {
      border = 'double',
    },
  },
}

-- Bufferline powers the Tab Management

return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  keys = {
    { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
    { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
    { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
    { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
    { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
    { '[b', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { ']b', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
    { '[B', '<cmd>BufferLineMovePrev<cr>', desc = 'Move buffer prev' },
    { ']B', '<cmd>BufferLineMoveNext<cr>', desc = 'Move buffer next' },
    { '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', desc = 'Goto Buffer 1' },
    { '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', desc = 'Goto Buffer 2' },
    { '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', desc = 'Goto Buffer 3' },
    { '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', desc = 'Goto Buffer 4' },
    { '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', desc = 'Goto Buffer 5' },
    { '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', desc = 'Goto Buffer 6' },
    { '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', desc = 'Goto Buffer 7' },
    { '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', desc = 'Goto Buffer 8' },
    { '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', desc = 'Goto Buffer 9' },
    { '<leader>$', '<Cmd>BufferLineGoToBuffer -1<CR>', desc = 'Goto Buffer -1' },
  },
  opts = {
    options = {
      -- stylua: ignore
      close_command = function(n) Snacks.bufdelete(n) end,
      -- stylua: ignore
      right_mouse_command = function(n) Snacks.bufdelete(n) end,
      diagnostics = 'nvim_lsp',
      always_show_bufferline = false,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Neo-tree',
          highlight = 'Directory',
          text_align = 'left',
        },
        {
          filetype = 'snacks_layout_box',
        },
      },
    },
  },
  config = function(_, opts)
    require('bufferline').setup(opts)
    -- Fix bufferline when restoring a session
    vim.api.nvim_create_autocmd({ 'BufAdd', 'BufDelete' }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}


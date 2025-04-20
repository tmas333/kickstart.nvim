return {
  -- Git diff viewer
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('diffview').setup {
        enhanced_diff_hl = true, -- Highlight word differences within lines
        view = {
          default = {
            layout = 'diff2_horizontal', -- Options: diff2_horizontal, diff2_vertical, diff3_horizontal, diff3_vertical
          },
        },
        file_panel = {
          win_config = {
            position = 'left', -- Can be "left", "right", "top", "bottom"
            width = 35,
          },
        },
      }
    end,
  },
}

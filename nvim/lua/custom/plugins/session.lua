-- return {
--   'folke/persistence.nvim',
--   event = 'BufReadPre',
--   opts = {},
--   -- stylua: ignore
--   keys = {
--     { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
--     { "<leader>qS", function() require("persistence").select() end, desc = "Select a session" },
--     { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
--     { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
--   },
-- }

return {
  'rmagatti/auto-session',
  lazy = false,
  dependencies = {
    'nvim-telescope/telescope.nvim', -- Only needed if you want to use sesssion lens
  },
  keys = {
    -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { '<leader>ls', '<cmd>SessionSearch<CR>', desc = 'Session search' },
    -- { '<leader>ws', '<cmd>SessionSave<CR>', desc = 'Save session' },
  },
  config = function()
    require('auto-session').setup {
      -- auto_session_suppress_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
    }
  end,
}

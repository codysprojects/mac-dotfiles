return {
  {
    "NeogitOrg/neogit",
    lazy = true,
    dependencies = {
      -- Only one of these is needed.
      "sindrets/diffview.nvim", -- optional
      --      "esmuellert/codediff.nvim",      -- optional

      -- For a custom log pager
      --     "m00qek/baleia.nvim",            -- optional

      -- Only one of these is needed.
      --      "nvim-telescope/telescope.nvim", -- optional
      --      "ibhagwan/fzf-lua",              -- optional
      --      "nvim-mini/mini.pick",           -- optional
      --      "folke/snacks.nvim",             -- optional
      "nvim-lua/plenary.nvim", -- From Kun Chen setup, but is no longer maintained.
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
    },
    {
      "lewis6991/gitsigns.nvim",
      event = "BufWinEnter",
      opts = { current_line_blame = true }, -- who last touched line
    },
  },
}

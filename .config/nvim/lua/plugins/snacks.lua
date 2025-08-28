return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = false,
        },
      },
      -- Show hidden files in the picker, similar to neo-tree configuration
      hidden = true,
      ignored = false,
      -- Include dotfiles in search
      files = {
        hidden = true,
        ignored = false,
      },
    },
  },
}

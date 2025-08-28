return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = { "node_modules", "git" },
        never_show = { ".git" },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
    },
  },
}

return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            -- This forces the explorer specifically to the right
            layout = { layout = { position = "right" } },
          },
        },
        -- If you want ALL sidebar-style pickers (like symbols) on the right
        layouts = {
          sidebar = {
            layout = { position = "right" },
          },
        },
      },
    },
  },
}

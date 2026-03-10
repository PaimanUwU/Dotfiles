return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- Using the darkest default flavor as a base
      color_overrides = {
        mocha = {
          base = "#0F0F1A",      -- Main background
          mantle = "#0F0F1A",    -- Secondary background (sidebars/line numbers)
          crust = "#0F0F1A",     -- Tertiary background
        },
      },
    },
  },
  -- Ensure LazyVim actually uses catppuccin as the active theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}

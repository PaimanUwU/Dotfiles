return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- Using the darkest default flavor as a base
      color_overrides = {
        mocha = {
          base = "#1E1E2E", -- Main background
          mantle = "#1E1E2E", -- Secondary background (sidebars/line numbers)
          crust = "#1E1E2E", -- Tertiary background
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

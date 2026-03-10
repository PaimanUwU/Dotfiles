return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- 1. Use rounded separators for the internal sections
      opts.options.section_separators = { left = "", right = "" }
      opts.options.component_separators = ""

      -- 2. Round the leftmost edge (Section A)
      -- We add a left separator to the first component in lualine_a
      if opts.sections.lualine_a and opts.sections.lualine_a[1] then
        opts.sections.lualine_a[1] = {
          opts.sections.lualine_a[1],
          separator = { left = "" }, -- Rounded outer left
          padding = { left = 1, right = 1 },
        }
      end

      -- 3. Round the rightmost edge (Section Z)
      -- We add a right separator to the last component in lualine_z
      if opts.sections.lualine_z and #opts.sections.lualine_z > 0 then
        local last_idx = #opts.sections.lualine_z
        opts.sections.lualine_z[last_idx] = {
          opts.sections.lualine_z[last_idx],
          separator = { right = "" }, -- Rounded outer right
          padding = { left = 1, right = 1 },
        }
      end
    end,
  },
}

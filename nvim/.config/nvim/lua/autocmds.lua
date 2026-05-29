require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

-- Skip dashboard if nvim is opened with a directory
autocmd("VimEnter", {
  callback = function()
    -- Check if the first argument is a directory (like '.')
    if vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
      -- 1. Open Snacks Explorer safely
      local pcall_success, snacks = pcall(require, "snacks")
      if pcall_success then
        snacks.picker.explorer()
      end
      
      -- 2. Find and delete the Nvdash buffer so it's not sitting in the background
      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.bo[buf].filetype == "nvdash" then
          vim.api.nvim_buf_delete(buf, { force = true })
        end
      end
    end
  end,
})

-- Markdown specific settings for prose writing
autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 2
  end,
})

-- Global Color Tweaks (Catppuccin Mocha Floating Elements)
autocmd("ColorScheme", {
  callback = function()
    local highlights = {
      NormalFloat = { bg = "#1E1D2D" },
      FloatBorder = { fg = "#313244", bg = "#1E1D2D" },
      WhichKey = { bg = "#1E1D2D" },
      WhichKeyFloat = { bg = "#1E1D2D" },
      SnacksNormal = { bg = "#1E1D2D" },
    }

    for group, settings in pairs(highlights) do
      vim.api.nvim_set_hl(0, group, settings)
    end
  end,
})

-- Browser-Embedded Firenvim UI Stripping
autocmd("UIEnter", {
  callback = function()
    local chan_info = vim.api.nvim_get_chan_info(vim.v.event.chan)
    local client = chan_info and chan_info.client
    
    if client and client.name == "firenvim" then
      -- 1. Turn off heavy NvChad UI elements for the tiny browser window
      vim.opt.laststatus = 0     -- Hide statusline
      vim.opt.showtabline = 0    -- Hide NvChad tabufline
      vim.opt.number = false     -- Disable numbers for clean document typing
      vim.opt.relativenumber = false

      -- 2. Adjust wrap settings for readable prose
      vim.opt.wrap = true
      vim.opt.linebreak = true
    end
  end,
})

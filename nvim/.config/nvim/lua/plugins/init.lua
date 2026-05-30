return {

  -- BASE ------------------------------------------------------------------------------------------------------------
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "java",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "xml",
      },
      highlight = { enable = true },
    },
  },

{
    "stevearc/conform.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          java = { "google-java-format" },
          javascript = { "prettier" },
          typescript = { "prettier" },
          css = { "prettier" },
          html = { "prettier" },
          json = { "prettier" },
          xml = { "xmlformatter" },
          jsp = { "prettier" }, 
        },
        -- Customizing Prettier to understand JSP files
        formatters = {
          prettier = {
            -- Overrides the default command arguments
            args = function(self, ctx)
              -- If the current file is a JSP file, force the HTML parser
              if vim.bo[ctx.buf].filetype == "jsp" then
                return { "--stdin-filepath", "$FILENAME", "--parser", "html" }
              end
              -- Otherwise, just use Prettier's standard arguments
              return { "--stdin-filepath", "$FILENAME" }
            end,
          },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_format = "fallback",
        },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig")
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = { layout = { position = "right" } },
          },
        },
        layouts = {
          sidebar = {
            layout = { position = "right" },
          },
        },
      },
      bigfile = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = false },
      words = { enabled = true },
    },
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = { -- Insert mode
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
          n = { -- Normal mode
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
      },
    },
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "helix",
      sort = { "local", "order", "group", "alphanum" },
      win = {
        border = "single",
        padding = { 1, 2 },
        col = 1,
        width = 40,
        height = { min = 20, max = 50 },
      },
      layout = {
        columns = 1,
        align = "left",
        spacing = 3,
      },
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
        mapping = false,
      },
    },
  },

  -- browser intergration
  {
    'glacambre/firenvim',
    build = function()
      vim.fn["firenvim#install"](0)
    end,
    lazy = false, -- Firenvim needs to start with Neovim to catch the browser trigger
    config = function()
      -- Firenvim configuration global variables
      vim.g.firenvim_config = {
        localSettings = {
          [".*"] = {
            takeover = "never", -- Prevents Firenvim from aggressively grabbing every single text box automatically
            cmdline  = "neovim",
          },
        },
      }
    end,
  },

  -- Optimization
  {
    "Zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      aggressive_mode = false,
      excluded_lsp_clients = { "lua_ls" },
    },
  },

  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      numhl = true,
    },
  },

  --line number
  {
    'mluders/comfy-line-numbers.nvim',
    lazy = false,
    config = function()
      require('comfy-line-numbers').setup({
        labels = {
          -- 1-digit (Lines 1 - 5)
          '1', '2', '3', '4', '5',

          -- 2-digits (Lines 6 - 30)
          '11', '12', '13', '14', '15',
          '21', '22', '23', '24', '25',
          '31', '32', '33', '34', '35',
          '41', '42', '43', '44', '45',
          '51', '52', '53', '54', '55',

          -- 3-digits (Lines 31 - 155)
          '111', '112', '113', '114', '115',
          '121', '122', '123', '124', '125',
          '131', '132', '133', '134', '135',
          '141', '142', '143', '144', '145',
          '151', '152', '153', '154', '155',
          '211', '212', '213', '214', '215',
          '221', '222', '223', '224', '225',
          '231', '232', '233', '234', '235',
          '241', '242', '243', '244', '245',
          '251', '252', '253', '254', '255',
          '311', '312', '313', '314', '315',
          '321', '322', '323', '324', '325',
          '331', '332', '333', '334', '335',
          '341', '342', '343', '344', '345',
          '351', '352', '353', '354', '355',
          '411', '412', '413', '414', '415',
          '421', '422', '423', '424', '425',
          '431', '432', '433', '434', '435',
          '441', '442', '443', '444', '445',
          '451', '452', '453', '454', '455',
          '511', '512', '513', '514', '515',
          '521', '522', '523', '524', '525',
          '531', '532', '533', '534', '535',
          '541', '542', '543', '544', '545',
          '551', '552', '553', '554', '555',
        },
        up_key = 'k',
        down_key = 'j',
        hidden_file_types = { 'undotree' },
        hidden_buffer_types = { 'terminal', 'nofile' }
      })
    end
  },

  -- NOTE TAKING ------------------------------------------------------------------------------------------------------------
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
    init = function()
      local set_hl = vim.api.nvim_set_hl

      -- Heading Backgrounds (Muted, sophisticated Catppuccin Mocha colors)
      set_hl(0, "RenderMarkdownH1Bg", { fg = "#89b4fa", bg = "#24273a", bold = true }) -- Soft Blue Tint
      set_hl(0, "RenderMarkdownH2Bg", { fg = "#a6e3a1", bg = "#252934", bold = true }) -- Soft Green Tint
      set_hl(0, "RenderMarkdownH3Bg", { fg = "#f9e2af", bg = "#2a2a32", bold = true }) -- Soft Yellow Tint
      set_hl(0, "RenderMarkdownH4Bg", { fg = "#f5c2e7", bg = "#292635", bold = true }) -- Soft Pink Tint
      set_hl(0, "RenderMarkdownH5Bg", { fg = "#94e2d5", bg = "#202734", bold = true }) -- Soft Teal Tint
      set_hl(0, "RenderMarkdownH6Bg", { fg = "#fab387", bg = "#2a2630", bold = true }) -- Soft Peach Tint

      -- Heading Icons/Foreground text matching the soft look
      set_hl(0, "RenderMarkdownH1", { fg = "#89b4fa", bold = true })
      set_hl(0, "RenderMarkdownH2", { fg = "#a6e3a1", bold = true })
      set_hl(0, "RenderMarkdownH3", { fg = "#f9e2af", bold = true })
      set_hl(0, "RenderMarkdownH4", { fg = "#f5c2e7", bold = true })
      set_hl(0, "RenderMarkdownH5", { fg = "#94e2d5", bold = true })
      set_hl(0, "RenderMarkdownH6", { fg = "#fab387", bold = true })

      -- Code blocks and tables overrides
      set_hl(0, "RenderMarkdownTableHead", { fg = "#89b4fa", bold = true })
      set_hl(0, "RenderMarkdownTableFill", { fg = "#313244" })
      set_hl(0, "RenderMarkdownCode", { bg = "#181825" })
    end,
    config = function()
      require('render-markdown').setup({
        heading = {
          sign = false,
          position = "inline",
          width = "block",
          left_pad = 2,
          right_pad = 4,
          backgrounds = {
            "RenderMarkdownH1Bg",
            "RenderMarkdownH2Bg",
            "RenderMarkdownH3Bg",
            "RenderMarkdownH4Bg",
            "RenderMarkdownH5Bg",
            "RenderMarkdownH6Bg",
          },
          foregrounds = {
            "RenderMarkdownH1",
            "RenderMarkdownH2",
            "RenderMarkdownH3",
            "RenderMarkdownH4",
            "RenderMarkdownH5",
            "RenderMarkdownH6",
          },
        },
        anti_conceal = {
          enabled = true,
          disabled_modes = false,
          above = 0,
          below = 0,
          ignore = {
            code_background = true,
            indent = true,
            sign = true,
            virtual_lines = true,
          },
        },
      })
    end
  },

  -- JAVA DEVELOPMENT ------------------------------------------------------------------------------------------------------------
  {
    "nvim-java/nvim-java",
    cmd = "JavaStart",
    config = function()
      require("java").setup()
      require("lspconfig").jdtls.setup({
        on_attach = require("nvchad.configs.lspconfig").on_attach,
        capabilities = require("nvchad.configs.lspconfig").capabilities,
      })
    end,
  },

  -- GO DEVELOPMENT --------------------------------------------------------------------------------------------------------------
  {
    "ray-x/go.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup({
        lsp_cfg = false,
        lsp_gofmt = false,
        lsp_on_attach = false,
        lsp_keymaps = false,
      })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
  },

  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function()
      require("gopher").setup()
    end,
  },

  -- LARAVEL DEVELOPMENT ---------------------------------------------------------------------------------------------------------
  {
  "adalessa/laravel.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
  },
  ft = { "php", "blade" },
  event = {
    "BufEnter composer.json",
  },
  keys = {
    { "<leader>ll", function() Laravel.pickers.laravel() end,              desc = "Laravel: Open Laravel Picker" },
    { "<c-g>",      function() Laravel.commands.run("view:finder") end,    desc = "Laravel: Open View Finder" },
    { "<leader>la", function() Laravel.pickers.artisan() end,              desc = "Laravel: Open Artisan Picker" },
    { "<leader>lt", function() Laravel.commands.run("actions") end,        desc = "Laravel: Open Actions Picker" },
    { "<leader>lr", function() Laravel.pickers.routes() end,               desc = "Laravel: Open Routes Picker" },
    { "<leader>lh", function() Laravel.run("artisan docs") end,            desc = "Laravel: Open Documentation" },
    { "<leader>lm", function() Laravel.pickers.make() end,                 desc = "Laravel: Open Make Picker" },
    { "<leader>lc", function() Laravel.pickers.commands() end,             desc = "Laravel: Open Commands Picker" },
    { "<leader>lo", function() Laravel.pickers.resources() end,            desc = "Laravel: Open Resources Picker" },
    { "<leader>lp", function() Laravel.commands.run("command_center") end, desc = "Laravel: Open Command Center" },
    { "<leader>lu", function() Laravel.commands.run("hub") end,            desc = "Laravel Artisan hub" },
    {
      "gf",
      function()
        local ok, res = pcall(function()
          if Laravel.app("gf").cursorOnResource() then
            return "<cmd>lua Laravel.commands.run('gf')<cr>"
          end
        end)
        if not ok or not res then
          return "gf"
        end
        return res
      end,
      expr = true,
      noremap = true,
    },
  },
  opts = {
    features = {
      pickers = {
        provider = "snacks", -- "snacks | telescope | fzf-lua | ui-select"
      },
    },
  },
}
}

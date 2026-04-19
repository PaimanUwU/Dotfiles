require "nvchad.mappings"

local map = vim.keymap.set

-- keymap goes here

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Paste in visual mode without overwriting register AND staying on the same line
map("x", "p", '"_dP', { desc = "Paste over selection" })

-- Disable macro recording (prevents accidental 'q' triggers)
map("n", "q", "<Nop>", { desc = "Disable macro recording" })

-- Paste without overwriting the register (Black hole register)
map("x", "p", [["_dP]], { desc = "Paste without overwriting" })

-- Tmux Navigator Mappings
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Tmux Left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Tmux Down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Tmux Up" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Tmux Right" })
map("n", "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", { desc = "Tmux Previous" })

-- Buffer Navigation
map("n", "L", function() require("nvchad.tabufline").next() end, { desc = "Buffer Next" })
map("n", "H", function() require("nvchad.tabufline").prev() end, { desc = "Buffer Previous" })

-- lua/mappings.lua
map("n", "<leader>e", function()
  Snacks.picker.explorer()
end, { desc = "Snacks Explorer" })

-- If you want to use the Snacks Picker for files (replaces Telescope)
map("n", "<leader>ff", function()
  Snacks.picker.files()
end, { desc = "Snacks Find Files" })

-- Open notification history using Snacks
map("n", "<leader>nh", function()
  Snacks.notifier.show_history()
end, { desc = "Notification History" })


map("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find Files" })

-- Flash.nvim Mappings
map({ "n", "x", "o" }, "s", function() require("flash").jump() end, { desc = "Flash Jump" })
map({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
map("o", "r", function() require("flash").remote() end, { desc = "Remote Flash" })
map({ "o", "x" }, "R", function() require("flash").treesitter_search() end, { desc = "Treesitter Search" })
map("c", "<c-s>", function() require("flash").toggle() end, { desc = "Toggle Flash Search" })

-- Markdown Preview
map("n", "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown Preview" })

require "nvchad.autocmds"

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
      -- If using Snacks Explorer (which you have installed)
      require("snacks").picker.explorer()
      
      -- Close the dashboard buffer if it exists
      local buffers = vim.api.nvim_list_bufs()
      for _, buf in ipairs(buffers) do
        if vim.bo[buf].filetype == "nvdash" then
          vim.api.nvim_buf_delete(buf, { force = true })
        end
      end
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 2
  end,
})

-- zeug 
-- vim.opt.laststatus = 2
-- vim.opt.cursorline = true
vim.opt.undofile = true

-- use spaces for tabs and whatnot
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.signcolumn = "yes"

--vim.opt.winborder = "rounded"

--Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

--Spell check
vim.opt_local.spell = true
vim.opt_local.spelllang = { "de" , "en"}

--Window title
vim.opt.title = true
vim.opt.titlelen = 0
vim.opt.titlestring = "nvim %t"

--Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 300 })
  end,
})

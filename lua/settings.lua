vim.o.exrc = true
vim.o.secure = true
vim.o.mouse = 'a'
vim.o.syntax = 'on'
vim.o.clipboard = 'unnamedplus,unnamed'
vim.o.hlsearch = false
vim.o.encoding = 'UTF-8'
vim.o.hidden = true
vim.o.errorbells = false
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.incsearch = true
vim.o.scrolloff = 10
vim.o.colorcolumn = "80"
vim.o.wrap = false
vim.wo.wrap = false
vim.g.elite_mode = true
vim.g.loaded_matchparen = true
vim.wo.number = true;
vim.wo.relativenumber = true;
vim.o.tabstop = 4
vim.o.shiftwidth = vim.o.tabstop

vim.g.ftToIgnore = { 'nerdtree', 'fzf' }
vim.api.nvim_exec([[
   augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
      autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
   augroup END
]], false)
--theme
vim.opt.termguicolors=true
vim.cmd [[colorscheme gruvbox]]
vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
vim.cmd [[set autoindent]]
--options 
vim.opt.clipboard=unnamedplus 
vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.tabstop=4
vim.opt.expandtab=true
vim.opt.shiftwidth=4
require'colorizer'.setup()

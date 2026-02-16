vim.cmd([[ let g:vimtex_view_method = 'zathura' ]])
vim.g.vimtex_compiler_latexmk = {
  options = {
    '-verbose',
    '-file-line-error',
    '-synctex=1',
    '-interaction=nonstopmode',
    '-shell-escape',  -- This enables Perl execution for Rubik
  }
}
vim.api.nvim_create_augroup('VimtexAutoCompile', { clear = true })
vim.api.nvim_create_autocmd('BufReadPost', {
  group = 'VimtexAutoCompile',
  pattern = '*.tex',
  callback = function()
    vim.cmd('VimtexCompile')
  end,
})


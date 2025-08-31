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

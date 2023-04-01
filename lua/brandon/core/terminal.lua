vim.cmd([[
  augroup terminal
    autocmd!
    autocmd TermOpen * startinsert
    autocmd TermOpen * setlocal nonumber norelativenumber
    autocmd TermEnter * setlocal signcolumn=no listchars=
  augroup END
]])

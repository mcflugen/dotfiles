" Vim syntax file example
" Put it to ~/.vim/after/syntax/ and tailor to your needs.

let glib_deprecated_errors = 1
let gtk_deprecated_errors = 1

if version < 600
  so <sfile>:p:h/glib.vim
  so <sfile>:p:h/sedflux.vim
else
  runtime! syntax/glib.vim
  runtime! syntax/sedflux.vim
endif

" vim: set ft=vim :

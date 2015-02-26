" Vim syntax file
" " Language: Celestia Star Catalogs
" " Maintainer: Eric Hutton
" " Latest Revision: 27 June 2011

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword ccaVerb display instantiate connect disconnect remove go quit

syn keyword ccaNoun path repository parameters
"syn keyword ccaNoun parameters nextgroup=ccaComponent skipwhite
"syn match ccaComponent "[[:alnum:]]*"

syn match ccaComment "#.*$"

hi def link ccaVerb Statement
hi def link ccaNoun Type
hi def link ccaComponent Constant
hi def link ccaComment Comment


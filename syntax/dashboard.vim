"if exists("b:current_syntax")
    "finish
"endif

" :colorscheme default

syntax keyword makePass  DONE
syntax keyword makePass  PASSW
syntax match   makePass  /\v.*YES\ze /
syntax keyword makePass  PASS
highlight link makePass  MoreMsg

syntax keyword makeNext  NEXT
syntax keyword makeNext  IN_P
syntax keyword makeNext  REDO
syntax keyword makeNext  WAIVE
syntax keyword makeNext  MATT
syntax keyword makeNext  MIKE
highlight link makeNext  CursorLineNr

syntax keyword makeFail  FAIL
syntax keyword makeFail  NO
syntax match   makeFail  /\v%>187c [^ ]*\zsX\ze[^ ]* /
syntax match   makeFail  /\v \zs\d+-\d+\ze /
" PURPOSE: Highlight DRC violation number above zero
syntax match   makeFail  /\V| \v\zs[1-9]\d*\ze +\V|/
" PURPOSE: Highlight IRDrop above 100mV
syntax match   makeFail  /\v \zs[1-9]\d{2,}mV\ze /
highlight link makeFail  Error

syntax keyword makePink  TODO
highlight link makePink  DiffChange

"syntax match columnSep     /\v[|+]/
"highlight link columnSep   Todo

let b:current_syntax = "dashboard"

"if exists("b:current_syntax")
    "finish
"endif

" :colorscheme default

syntax keyword makeDone  DONE
syntax keyword makeDone  PASSW
syntax match   makeDone  /\v.*YES\ze /
syntax keyword makeDone  PASS
syntax match   makeDone  /\v^ *✓ \zs.*$/
highlight link makeDone  MoreMsg

syntax match   dateHeader  /\v^ *∷ \zs.*$/
highlight link dateHeader  CursorLineNr

syntax keyword makeNext  NEXT
syntax keyword makeNext  IN_P
syntax keyword makeNext  REDO
syntax keyword makeNext  WAIVE
syntax keyword makeNext  MATT
syntax keyword makeNext  MIKE
syntax match   makeNext  /\v^ *→ \zs.*$/
highlight link makeNext  DiffChange

syntax keyword makeTodo  TODO
syntax match   makeTodo  /\v^- \zs.*$/
highlight link makeTodo  CursorLineNr

syntax keyword makeFail  FAIL
syntax keyword makeFail  NO
syntax match   makeFail  /\v%>187c [^ ]*\zsX\ze[^ ]* /
syntax match   makeFail  /\v \zs\d+-\d+\ze /
" PURPOSE: Highlight DRC violation number above zero
syntax match   makeFail  /\V| \v\zs[1-9]\d*\ze +\V|/
" PURPOSE: Highlight IRDrop above 100mV
syntax match   makeFail  /\v \zs[1-9]\d{2,}mV\ze /
highlight link makeFail  Error

let b:current_syntax = "dashboard"

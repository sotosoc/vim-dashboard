"if exists("b:current_syntax")
    "finish
"endif

" These colors assume carvedwood colorscheme
"syntax match   makeGray    /^\v[-+]+$/
"syntax match   makeGray    /^\V{{{1\v [^ ]+ +\zs.*$/
"highlight link makeGray    Comment

syntax keyword makeYellow  IN_P
syntax keyword makeYellow  REDO
syntax keyword makeYellow  WAIVE
syntax keyword makeGreen   PASSW
highlight link makeYellow  CursorLineNr

syntax keyword makeRed     FAIL
syntax keyword makeRed     EMET
syntax keyword makeRed     MATT
syntax keyword makeRed     MIKE
syntax keyword makeRed     NO
"syntax keyword makeRed     /\Vpnr-run/
syntax match   makeRed     /\v%>187c [^ ]*\zsX\ze[^ ]* /
syntax match   makeRed     /\v \zs\d+-\d+\ze /
" PURPOSE: Highlight DRC violation number
syntax match   makeRed     /\V| \v\zs[1-9]\d*\ze +\V|/
" PURPOSE: Highlight IRDrop above 100mV
syntax match   makeRed     /\v \zs[1-9]\d{2,}mV\ze /
highlight link makeRed     Error

syntax keyword makePink    TODO
syntax keyword makePink    NEXT
highlight link makePink    DiffChange

syntax match   makeBlock   /\V{{{1 \v\zs[^ ]+/
highlight link makeBlock   Identifier

syntax keyword makeBlue    HERE
highlight link makeBlue    MatchParen

syntax keyword makeGreen   37EISS
syntax keyword makeGreen   DEFISS
syntax match   makeGreen   /\v.*YES\ze /
syntax keyword makeGreen   DONE
syntax keyword makeGreen   PASS
highlight link makeGreen   Debug

"syntax match columnSep     /\v[|+]/
"highlight link columnSep   Todo

set cc=

let b:current_syntax = "dashboard"

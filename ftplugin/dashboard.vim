setlocal iskeyword+=-

setlocal foldmarker={{{,}}}
setlocal foldmethod=marker
setlocal foldlevel=0

" Purpose: Wide file that should not wrap text
setlocal tw=0

" Purpose: Turn off color columns
set cc=

nnoremap ,d A !!datekgJ
nnoremap ,f 0/\v(Sun\|Mon\|Tue\|Wed\|Thu\|Fri\|Sat)/
nnoremap ,u 0/\v(Sun\|Mon\|Tue\|Wed\|Thu\|Fri\|Sat)/d$A!!datekgJ

ab -> →
ab OK ✓
ab XX ✗
ab <- ←
ab :: ∷

setlocal iskeyword+=-

setlocal foldmarker={{{,}}}
setlocal foldmethod=marker
setlocal foldlevel=0

" Purpose: Wide file that should not wrap text
setlocal tw=0

nnoremap ,d A 
nnoremap ,f 0/\v(Sun\|Mon\|Tue\|Wed\|Thu\|Fri\|Sat)/
nnoremap ,u 0/\v(Sun\|Mon\|Tue\|Wed\|Thu\|Fri\|Sat)/
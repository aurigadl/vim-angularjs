
let s:save_cpo = &cpo
set cpo&vim

" neocomplcache source {{{1
let s:source = {
  \ 'name': 'js_complete',
  \ 'kind': 'ftplugin',
  \ 'filetypes': { 'javascript': 1 },
  \ }

" function s:source.initialize() "{{{
"   call jscomplete#SetGlobalObject()
" endfunction "}}}
function s:source.finalize() "{{{
  unlet! b:GlobalObject
endfunction "}}}
function s:source.get_keyword_pos (cur_text) "{{{
  if neocomplcache#within_comment()
    return -1
  endif
  return jscomplete#GetCompletePosition(a:cur_text, line('.'))
endfunction "}}}
function s:source.get_complete_words (pos, complWord) "{{{
  let completionLength = neocomplcache#get_completion_length('jscomplete')
  if completionLength == 0 && exists('g:neocomplcache_auto_completion_start_length')
    let completionLength = g:neocomplcache_auto_completion_start_length
  endif

  let l:currentLine = line('.')
  let l:currentCol = col('.')

  let l:currentText = getline('.')
  let l:shortcontext = a:pos > 0 ? substitute(l:currentText[0: a:pos -1], '\s*$', '', '') : ''

  let l:lineNum = l:currentLine
  if empty(l:shortcontext)
    let l:lineNum = prevnonblank(l:lineNum - 1)
    let l:shortcontext = getline(l:lineNum)
  endif

  let compList = jscomplete#GetCompleteWords(a:complWord, l:shortcontext, l:lineNum, completionLength)
  call cursor(l:currentLine, l:currentCol)
  return compList
endfunction "}}}
" 1}}}

function! neocomplcache#sources#jscomplete#define ()
  return s:source
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set foldmethod=marker:

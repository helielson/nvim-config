nnoremap <leader>d :Gdiff<CR>       " open git diff
nnoremap <leader>w ]c               " next diff in the diff tool
nnoremap <leader>e [c               " previous diff in the diff tool
nnoremap <leader>q :diffput<CR>     " puts the diff to the anoter window
nnoremap <leader>r :diffget<CR>     " get the diff from another window

function! s:ToggleGstatus() abort
  let s:foundStatusWindowOpen = 0

  for l:currWindow in range(1, winnr('$'))
    if !empty(getwinvar(l:currWindow, 'fugitive_status'))
      execute l:currWindow.'close'
      let s:foundStatusWindowOpen = 1
    endif
  endfor

  if !s:foundStatusWindowOpen
    Git
    call feedkeys("\<C-W>H")
  endif
endfunction

nnoremap <leader>gs :call <SID>ToggleGstatus()<CR>

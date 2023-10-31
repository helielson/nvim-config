function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> <leader>gd <plug>(lsp-definition)
    " nmap <buffer> gs <plug>(lsp-document-symbol-search)
    " nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    " nmap <buffer> gr <plug>(lsp-references)
    " nmap <buffer> gi <plug>(lsp-implementation)
    " nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> <leader>k <plug>(lsp-previous-diagnostic)
    nmap <buffer> <leader>j <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.dart,*.go call execute('LspDocumentFormatSync')

endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


let g:lsp_document_highlight_enabled = 0

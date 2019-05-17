let s:cpo_save = &cpo
set cpo&vim

function! s:install_manager() abort
  " Fsep && Psep
  if has('win16') || has('win32') || has('win64')
    let s:Psep = ';'
    let s:Fsep = '\'
  else
    let s:Psep = ':'
    let s:Fsep = '/'
  endif

  "auto install vim-plug
  if filereadable(expand(g:settings.plugin_manager_init_file_path))
    let g:_vim_plug_installed = 1
  else
    if executable('curl')
      exec '!curl -fLo '
            \ . g:settings.plugin_manager_init_file_path
            \ . ' --create-dirs '
            \ . 'https://raw.githubusercontent.com/'
            \ . 'junegunn/vim-plug/master/plug.vim'
      let g:_vim_plug_installed = 1
    else
      echohl WarningMsg
      echom 'You need install curl!'
      echohl None
    endif
  endif
  exec 'set runtimepath+=' . g:settings.plugin_manager_dir
endf

fu! zvim#plug#ensure_installation() abort
  call s:install_manager()
endf

let &cpo = s:cpo_save
unlet s:cpo_save

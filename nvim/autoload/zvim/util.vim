let s:cpo_save = &cpo
set cpo&vim

fu! zvim#util#source_rc(file) abort
  if filereadable(g:config_path . '/' . a:file)
    execute 'source ' . g:config_path  . '/' . a:file
  endif
endf

fu! zvim#util#enabled_group(group)
  return index(g:settings.plugin_groups, a:group) >= 0
endf

let &cpo = s:cpo_save
unlet s:cpo_save

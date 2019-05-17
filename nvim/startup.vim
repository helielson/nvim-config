let g:config_path = fnamemodify(expand('<sfile>'), ':p:h:gs?\\?/?') . '/config'

" setup options
call zvim#util#source_rc('options.vim')
call zvim#util#source_rc('core.vim')

if g:settings.enabled_plugins
  call zvim#util#source_rc('plugins.vim')
endif

call zvim#util#source_rc('mappings.vim')

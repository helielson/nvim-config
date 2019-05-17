let g:ale_sign_column_always = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
\ 'typescript': ['tslint', 'tsserver'],
\ 'javascript': ['eslint', 'flow', 'prettier'],
\ 'python': ['pylint'],
\ 'go': ['gometalinter']
\}


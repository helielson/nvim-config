let g:ale_sign_column_always = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
\ 'javascript': ['eslint', 'flow', 'prettier'],
\ 'python': ['pylint', 'pyls', 'flake8', 'mypy'],
\ 'go': ['gometalinter']
\}
let g:ale_fixers = {
\ 'python': ['black', 'isort'],
\ 'javascript': ['prettier']
\}

let g:ale_linters_ignore = {'python': ['pyls']}
let g:ale_python_auto_pipenv = 1
let g:ale_python_mypy_options = '--ignore-missing-imports'

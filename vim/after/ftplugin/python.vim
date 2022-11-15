" Don't expand tabs and whatever
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4

call DetectIndentIfNoLocalRC()

let g:python_space_error_highlight = 1
" set omnifunc=syntaxcomplete#Complete

let b:ale_linters = ['pyflakes', 'mypy', 'pyright']
if &expandtab == 0
  let b:ale_fixers = ['autoimport', 'isort', 'yapf']
endif


let b:ale_python_isort_options = '-m NOQA'
nnoremap <localleader>b eObreakpoint()<Esc>

nnoremap <localleader>i :ImportName<CR><C-O>

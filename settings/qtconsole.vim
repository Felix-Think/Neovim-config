let g:jupyter_mapkeys = 0
let maplocalleader = "]"
" Connect QTconsole
nnoremap <localleader>c :JupyterConnect<CR>
" Run current file
nnoremap  <silent> <localleader>r :JupyterRunFile<CR>
nnoremap <silent> <localleader>i :PythonImportThisFile<CR>

" Change to directory of current file
nnoremap  <silent> <localleader>d :JupyterCd %:p:h<CR>

" Send a selection of lines
nnoremap  <silent> <localleader>x :JupyterSendCell<CR>
vnoremap  <silent> <localleader>x :JupyterSendRange<CR>
nmap      <silent> <localleader>e <Plug>JupyterRunTextObj
vmap      <silent> <localleader>e <Plug>JupyterRunVisual

" Debugging maps
nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>

let g:floaterm_position = 'topright'
let g:floaterm_width = 0.4
let g:floaterm_height = 0.5
let g:floaterm_title = 'ULTRA GAY: $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif

" Set color
hi Floaterm guibg=NONE guifg=Blue
hi Floaterm guifg=White
hi FloatermBorder guifg=Yellow guibg=NONE
hi FloatermNC guibg=NONE
autocmd User FloatermOpen        " triggered after opening a new/existed floater

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new terminal 
nnoremap <silent> <F8>    :FloatermNew<CR>
tnoremap <silent> <F8>    <C-\><C-n>:FloatermNew<CR>

" Kill current terminal 
nnoremap <silent> <F9> :FloatermKill<CR>:FloatermPrev<CR>
tnoremap <silent> <F9> <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Navigation next and previous terminal 
nnoremap <silent> <leader>tn :FloatermNext<CR>
tnoremap <silent> <leader>tn <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <leader>tp :FloatermPrev<CR>
tnoremap <silent> <leader>tp <C-\><C-n>:FloatermPrev<CR>

" Toggle terminal
nnoremap <silent> <leader>tt :FloatermToggle<CR>
tnoremap <silent> <leader>tt <C-\><C-n>:FloatermToggle<CR>

" Focus terminal 
nnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>
tnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to run other console apps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git 
nnoremap <silent> <leader>gl :FloatermNew! --position=bottomright --height=0.5 --width=0.4 --title='Git-Felix'<CR>

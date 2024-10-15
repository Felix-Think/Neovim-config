 "_____    _ _         ____          _           
"|  ___|__| (_)_  __  / ___|___   __| | ___ _ __ 
"| |_ / _ \ | \ \/ / | |   / _ \ / _` |/ _ \ '__|
"|  _|  __/ | |>  <  | |__| (_) | (_| |  __/ |   
"|_|  \___|_|_/_/\_\  \____\___/ \__,_|\___|_|  

lua print('Neovim started...')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a                 " Enable mouse
set expandtab               " Tab setting 
set tabstop=4               " Tab setting 
set shiftwidth=4            " Tab setting
set listchars=tab:\¦\       " Tab charactor 
set list
set foldmethod=syntax         
set foldnestmax=1
set foldlevelstart=3        "  
set number                  " Show line number
set ignorecase              " Enable case-sensitive 
set autoread                " Auto reload file when changed outside
" Disable backup
set nobackup
set nowb
set noswapfile

" Optimize 
set synmaxcol=3000    "Prevent breaking syntax hightlight when string too long. Max = 3000"
set lazyredraw
au! BufNewFile,BufRead *.json set foldmethod=indent " Change foldmethod for specific filetype

syntax on

" Enable copying from vim to clipboard
if has('win32')
  set clipboard=unnamed  
else
  set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
      \ | checktime 
    \ | endif
autocmd FileChangedShellPost *
    \ echohl WarningMsg 
    \ | echo "File changed on disk. Buffer reloaded."
    \ | echohl None
" Tự động bật Copilot khi mở NeoVim
autocmd VimEnter * Copilot enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Resize pane
nmap <M-Right> :vertical resize +1<CR>    
nmap <M-Left> :vertical resize -1<CR>
nmap <M-Down> :resize +1<CR>
nmap <M-Up> :resize -1<CR>

" Search a hightlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
nmap /\ :noh<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin list
" (used with Vim-plug - https://github.com/junegunn/vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin(stdpath('config').'/plugged')
" Theme
  Plug 'zaldih/themery.nvim'
"Theme Plugin
  Plug 'folke/tokyonight.nvim'
  Plug 'joshdick/onedark.vim' " Dark theme
  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
  Plug 'Abstract-IDE/Abstract-cs'
  Plug 'tomasiser/vim-code-dark'
  Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
  Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'jsit/disco.vim'
  Plug 'jaredgorski/SpaceCamp'
  Plug 'sainnhe/everforest'
  Plug 'rakr/vim-one'
  Plug 'sonph/onehalf', { 'rtp': 'vim/' }
  Plug 'arzg/vim-colors-xcode'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'morhetz/gruvbox'
  Plug 'nanotech/jellybeans.vim'
  Plug 'savq/melange'
  Plug 'glepnir/zephyr-nvim'
  Plug 'tjdevries/colorbuddy.vim'
  Plug 'Th3Whit3Wolf/onebuddy'
  Plug 'rigellute/shades-of-purple.vim'
  Plug 'tomasr/molokai'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'phanviet/vim-monokai-pro'
  Plug 'tanvirtin/monokai.nvim'
  Plug 'kristijanhusak/vim-hybrid-material'
  Plug 'katawful/kat.nvim'
  Plug 'yonlu/omni.vim'
  Plug 'pineapplegiant/spaceduck'
  Plug 'andersevenrud/nordic.nvim'
  Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
  Plug 'shaunsingh/nord.nvim'
  Plug 'Tsuzat/NeoSolarized.nvim', { 'branch': 'master' }
  Plug 'mangeshrex/uwu.vim'
  Plug 'mcchrish/zenbones.nvim', { 'requires': 'rktjmp/lush.nvim' }
  Plug 'kvrohit/mellow.nvim'
  Plug 'kvrohit/rasmus.nvim'
  Plug 'kdheepak/monochrome.nvim'
  Plug 'ray-x/aurora'
  Plug 'EdenEast/nightfox.nvim'
  Plug 'rebelot/kanagawa.nvim'
  Plug 'tiagovla/tokyodark.nvim'
  Plug 'yashguptaz/calvera-dark.nvim'
  Plug 'ldelossa/vimdark'
  Plug 'adisen99/codeschool.nvim'
  Plug 'maaslalani/nordbuddy'
  Plug 'projekt0n/github-nvim-theme'
  Plug 'rmehri01/onenord.nvim'
  Plug 'loganswartz/polychrome.nvim'
  Plug 'loganswartz/sunburn.nvim'
  Plug 'bakageddy/alduin.nvim'
  Plug 'diegoulloao/neofusion.nvim'
  Plug 'rktjmp/lush.nvim'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'kvrohit/substrata.nvim'
  Plug 'adisen99/apprentice.nvim'
  Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}
  Plug 'titanzero/zephyrium'
  Plug 'phha/zenburn.nvim'
  Plug 'rockyzhang24/arctic.nvim'
  Plug 'nxvu699134/vn-night.nvim'
  Plug 'Th3Whit3Wolf/space-nvim'
  Plug 'Mofiqul/adwaita.nvim'
" File browser
  Plug 'preservim/nerdTree'                     " File browser  
  Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status
  Plug 'ryanoasis/vim-devicons'                 " Icon
  Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file 
  Plug 'jcharum/vim-nerdtree-syntax-highlight',
    \ {'branch': 'escape-keys'}

" File search
  Plug 'junegunn/fzf', 
   \ { 'do': { -> fzf#install() } }            " Fuzzy finder 
  Plug 'junegunn/fzf.vim'

" Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" Terminal
  Plug 'voldikss/vim-floaterm'                  " Float terminal

" Code intellisense
  Plug 'neoclide/coc.nvim', 
    \ {'branch': 'release'}                     " Language server protocol (LSP) 
  Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 
  Plug 'mattn/emmet-vim' 
  Plug 'preservim/nerdcommenter'                " Comment code 
  " Plug 'liuchengxu/vista.vim'                   " Function tag bar
  Plug 'alvan/vim-closetag'                     " Auto close HTML/XML tag 
    \ { 
      \ 'do': 'yarn install '
              \ .'--frozen-lockfile '
              \ .'&& yarn build',
      \ 'branch': 'main' 
    \ }
  Plug 'vim-python/python-syntax'
" Code syntax highlight
  " Plug 'yuezk/vim-js'                           " Javascript
  " Plug 'MaxMEllon/vim-jsx-pretty'               " JSX/React
  Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
  Plug 'uiiaoo/java-syntax.vim'                 " Java
  Plug 'sheerun/vim-polyglot'
  
" Debugging
  Plug 'puremourning/vimspector'                " Vimspector

" Source code version control 
  Plug 'tpope/vim-fugitive'                     " Git infomation 
  Plug 'tpope/vim-rhubarb' 
  Plug 'airblade/vim-gitgutter'                 " Git show changes 
  Plug 'samoshkin/vim-mergetool'                " Git merge

" Fold 
  Plug 'tmhedberg/SimpylFold'
"Github Compolot
  Plug 'zbirenbaum/copilot.lua'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
  Plug 'folke/which-key.nvim'
  Plug 'ibhagwan/fzf-lua'

"Jupyter
  Plug 'untitled-ai/jupyter_ascending.vim'
  Plug 'jupyter-vim/jupyter-vim'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set theme 

set guifont=:h4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
"Chuyen cua so nhanh
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Ensure Vim is set up for icons and utf-8 encoding
set encoding=utf-8
set guifont=JetBrainsMono\ Nerd\ Font:h12

" hightlight background transparent background for nvim
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
hi NormalNC ctermbg=NONE guibg=NONE
set termguicolors



" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

let g:python_host_prog = '/home/felix/anaconda3/envs/felix/bin/python3'
"Thuc thi File
autocmd FileType python nnoremap <buffer> <F3> :w<CR>:botright split<CR>:terminal python3 %<CR>
autocmd FileType python inoremap <buffer> <F3> <esc>:w<CR>:botright split<CR>:terminal python3 %<CR>

" Thực thi File Python
autocmd FileType python nnoremap <buffer> <F3> :w<CR>:botright split<CR>:terminal /home/felix/anaconda3/envs/felix/bin/python %<CR>
autocmd FileType python inoremap <buffer> <F3> <esc>:w<CR>:botright split<CR>:terminal /home/felix/anaconda3/envs/felix/bin/python %<CR>

" Thực thi file Python cần nhập từ bàn phím
autocmd FileType python map <buffer> <F2> :w<CR>:execute 'botright vertical terminal /home/felix/anaconda3/envs/felix/bin/python' expand('%:p')<CR>:execute 'vertical resize' winwidth(0)*0.7<CR>
autocmd FileType python imap <buffer> <F2> <esc>:w<CR>:execute 'botright vertical terminal /home/felix/anaconda3/envs/felix/bin/python' expand('%:p')<CR>:execute 'vertical resize' winwidth(0)*0.7<CR>



" Áp dụng cho file C++
function! CompileAndRunCpp()
    " Lưu file hiện tại
    write
    " Tạo lệnh biên dịch và chạy, kèm theo '&& read' để giữ terminal mở
    let compile_run_cmd = 'g++ -o ' . expand('%:r') . ' ' . expand('%') . ' && ./' . expand('%:r') . '; echo "Press Enter to continue..."; read dummyVar'
    " Mở floaterm và chạy lệnh
    execute 'FloatermNew --position=bottomright --width=0.4 --height=0.5 ' . compile_run_cmd
endfunction

" Gán phím tắt F2 cho file C++
autocmd FileType cpp nnoremap <buffer> <F2> :call CompileAndRunCpp()<CR>
"Tab next
nnoremap <leader>t :tabnext<CR>


" Buffer Control
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>
nnoremap <leader>bd :bp \| sp \| bn \| bd<CR>

"Setting conda-vitualenv 
let g:python3_host_prog = '/home/felix/anaconda3/envs/felix/bin/python3'

"Setting keymap Jupyter

let maplocalleader = ']'
nmap <space><space>x <Plug>JupyterExecute
nmap <space><space>X <Plug>JupyterExecuteAll
nmap <space><space>r <Plug>JupyterRestart

"Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor


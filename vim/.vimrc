call plug#begin('~/.vim/plugged')

" ==== COMMON ==== 
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" ==== Nord theme ==== 
Plug 'arcticicestudio/nord-vim'
Plug 'nordtheme/vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ==== JS/JSX/TS ==== 
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'

" ==== Linter and formatter ==== 
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'dense-analysis/ale'

call plug#end()



" ==== NERDTree ==== 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>



" ==== Airline ==== 
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_powerline_fonts = 1



" ==== Netrw file explorer settings ==== 
let g:netrw_banner = 0 " hide banner above files
let g:netrw_liststyle = 3 " tree instead of plain view



" ==== leafgarland/typescript-vim ==== 
let g:typescript_indent_disable = 1



" ==== EMMET ==== 
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'



" ==== PRETTIER ==== 
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#exec_cmd_async = 1
let g:prettier#config#use_tabs = 'true'
let g:prettier#quickfix_enabled = 0



" ==== ESLINT ==== 
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}


" ==== COMMON ==== 
set number
set relativenumber
syntax on
colorscheme nord
set cindent
set noswapfile
set clipboard=unnamedplus
set cursorline

set ruler
set showmode
set wildmenu
set showcmd

set nocompatible
set history=10

set ttimeout
set ttimeoutlen=100

filetype plugin indent on
set autowrite
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

" ==== SEARCH ==== 
set ignorecase
set nohlsearch
set incsearch
set nowrapscan

nnoremap + :res +20<CR>
nnoremap _ :res -20<CR>
" set mouse=a

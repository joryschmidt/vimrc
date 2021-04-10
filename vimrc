"Movement controls ----------------- {{{
noremap J 4j
noremap K 4k
noremap H 8h
noremap L 8l 
noremap mj J
" }}} 

set number
set tabstop=2
set shiftwidth=2
set expandtab
set suffixesadd=.js
set autoindent

colorscheme Tomorrow-Night

" insert new lines without moving or entering insert mode
nnoremap <space>o moo<esc>`o
nnoremap <space>O moO<esc>`o

" easy visual block mode
nnoremap vb <c-v>

" reverse linewise search remap
nnoremap \ ,

let mapleader = ","
let maplocalleader = ","

" escape
inoremap <leader>e <esc>
vnoremap <leader>e <esc>

" switch splits
nnoremap <leader>sd <C-w>w
nnoremap <leader>sh <C-w>h
nnoremap <leader>sj <C-w>j
nnoremap <leader>sk <C-w>k
nnoremap <leader>sl <C-w>l

" resize split
nnoremap <leader>h <C-w><
nnoremap <leader>l <C-w>>
nnoremap <leader>j <C-w>+
nnoremap <leader>k <C-w>-

" make netrw tree default style
let g:netrw_liststyle= 3

" switch tabs
nnoremap <C-\> gt

" open vimrc
nnoremap <leader>vf :vsplit $MYVIMRC<cr>
" source vimrc
nnoremap <leader>svf :source $MYVIMRC<cr>
" open bashrc
nnoremap <leader>ba :e ~/.bashrc<cr>
" open bash_aliases
nnoremap <leader>al :e ~/.bash_aliases<cr>

" place semicolon at the end of a line
nnoremap <leader>; mqA;<esc>`q

" good for fixing common typos
iabbrev fucntion function
iabbrev @@ codejory@protonmail.com

" add commenting a line file specifically with ,c
augroup filePrefs
autocmd!
autocmd FileType javascript nnoremap <buffer> <leader>c I//<esc>
autocmd FileType python nnoremap <buffer> <leader>c I#<esc>
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType mql4 setlocal tabstop=3
autocmd FileType mql4 setlocal shiftwidth=3
augroup END
filetype plugin indent on
syntax on

" Plugins
execute pathogen#infect()

" can use something like this for snippets
":autocmd FileType javascript :iabbrev <buffer> iff if()<left>

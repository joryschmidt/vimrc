"Movement controls ----------------- {{{
noremap J 4j
noremap K 4k
noremap H 8h
noremap L 8l 
noremap mm J
" }}}

set number
set tabstop=2
set shiftwidth=2
set expandtab
set suffixesadd=.js
set ignorecase
set autoindent

colorscheme Tomorrow-Night

"visual select word under cursor
nnoremap <space> viw

" easy visual block mode
nnoremap vb <c-v>

" reverse linewise search remap
nnoremap \ ,

let mapleader = ","
" local leader is usually different, and always use localleader for mappings in a plugin someone else might use
let maplocalleader = ","

" escape
inoremap <leader>e <esc>
vnoremap <leader>e <esc>

" switch splits
nnoremap <leader>sd <C-w>w
nnoremap <leader>sl <C-w>l
nnoremap <leader>sh <C-w>h
nnoremap <leader>sj <C-w>j
nnoremap <leader>sk <C-w>k

" resize split-
nnoremap <leader>h <C-w><
nnoremap <leader>l <C-w>>
nnoremap <leader>j <C-w>+
nnoremap <leader>k <C-w>-


" toggle NERDtree
noremap <leader>nt :NERDTreeToggle<cr>

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

" place quotes around word
nnoremap <leader>' viw<esc>a"<esc>bi"<esc>lel

" place parentheses around WORD
nnoremap <leader>( viW<esc>a)<esc>Bi(<esc>lEl

" place semicolon at the end of a line
" nnoremap <leader>; ":execute normal! mqA;\<esc>`q"

" good for fixing common typos
iabbrev fucntion function
iabbrev @@ codejory@gmail.com

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

" MQL4 syntax and NERDTree
execute pathogen#infect()

" can use something like this for snippets
":autocmd FileType javascript :iabbrev <buffer> iff if()<left>

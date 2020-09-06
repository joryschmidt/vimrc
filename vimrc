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

colorscheme Tomorrow-Night

"visual select word under cursor
nnoremap <space> viw

" switch lines
noremap - ddp
noremap _ ddkP

" easy visual block mode
nnoremap vb <c-v>

let mapleader = ","
" local leader is usually different, and always use localleader for mappings in a plugin someone else might use
let maplocalleader = ","

" escape
inoremap <leader>e <esc>
vnoremap <leader>e <esc>

" switch splits
noremap <leader>s  <C-w>w
noremap <leader>sl <C-w>l
noremap <leader>sh <C-w>h
noremap <leader>sj <C-w>j
noremap <leader>sk <C-w>k

" open vimrc
nnoremap <leader>vf :vsplit $MYVIMRC<cr>
" source vimrc
nnoremap <leader>svf :source $MYVIMRC<cr>
" open bashrc
nnoremap <leader>ba :e ~/.bashrc<cr>
" open bash_aliases
nnoremap <leader>al :e ~/.bash_aliases<cr>

" open file browser
nnoremap <leader>m :Ex<cr>
" exit buffer
nnoremap <leader>x :bd<cr>

" place quotes around word
nnoremap <leader>' viw<esc>a"<esc>bi"<esc>lel

" place semicolon at the end of a line
nnoremap <leader>; ":execute normal! mqA;\<esc>`q"

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
augroup END

" can use something like this for snippets
":autocmd FileType javascript :iabbrev <buffer> iff if()<left>

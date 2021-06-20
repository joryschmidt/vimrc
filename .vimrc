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

" insert new lines or chars without entering insert mode
nnoremap <space>o moo<esc>`o
nnoremap <space>O moO<esc>`o
nnoremap <space>i  i_<esc>r
nnoremap <space>a  a_<esc>r

" easy visual block mode
nnoremap vb <c-v>

" reverse linewise search remap
nnoremap \ ,

" operator pending - to end of paragraph
onoremap ep /^$<cr>

" INSERT MODE MAPPINGS
let mapleader = ","
let maplocalleader = ","

" move to end or beginning of line in insert mode
inoremap <C-l> <C-o>$
inoremap g<C-l> <C-o>^

inoremap g<C-u> <C-u><esc>

" escape
inoremap <leader>e <esc>
vnoremap <leader>e <esc>

" switch splits
nnoremap <leader>sd <C-w>w
nnoremap <leader>sh <C-w>h
nnoremap <leader>sj <C-w>j
nnoremap <leader>sk <C-w>k
nnoremap <leader>sl <C-w>l

nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
" nnoremap <silent> <C-q> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" swap split
nnoremap <silent> <leader>ss <C-w>x

" resize split
nnoremap <leader>h 10<C-w><
nnoremap <leader>l 10<C-w>>
nnoremap <leader>j 5<C-w>+
nnoremap <leader>k 5<C-w>-
nnoremap <C-_> <C-w>_

" make netrw tree default style
let g:netrw_liststyle = 3

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
"
"For coc
let g:coc_disable_startup_warning = 1

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

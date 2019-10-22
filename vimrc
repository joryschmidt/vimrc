:noremap J 4j
:noremap K 4k
:noremap H 8h
:noremap L 8l 
:noremap mm J

:noremap <space> viw
:noremap - ddp
:noremap _ ddkP
:inoremap <c-u> <esc>viwUA

:set number
:set tabstop=2
:set shiftwidth=2
:set expandtab

:let mapleader = ","
:let maplocalleader = ","
" escape
:inoremap <leader>e <esc>
" open vimrc
:nnoremap <leader>vf :vsplit $MYVIMRC<cr>
" source vimrc
:nnoremap <leader>svf :source $MYVIMRC<cr>
" place quotes around word
:nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" good for fixing common typos
:iabbrev fucntion function
:iabbrev @@ joryschmidt1988@gmail.com

" add commenting a line file specifically with ,c
:autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
:autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>


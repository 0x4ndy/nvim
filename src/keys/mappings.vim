let mapleader="\<Space>"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm(): "<Tab>"

nnoremap <C-q> :BufferClose<CR>
nnoremap <M-1> :BufferGoto 1<CR>
nnoremap <M-2> :BufferGoto 2<CR>
nnoremap <M-3> :BufferGoto 3<CR>
nnoremap <M-4> :BufferGoto 4<CR>
nnoremap <M-5> :BufferGoto 5<CR>
nnoremap <M-6> :BufferGoto 6<CR>
nnoremap <M-7> :BufferGoto 7<CR>
nnoremap <M-8> :BufferGoto 8<CR>
nnoremap <M-9> :BufferGoto 9<CR>
nnoremap <M-,> :BufferPrevious<CR>
nnoremap <M-.> :BufferNext<CR>

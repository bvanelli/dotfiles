colorscheme badwolf

syntax enable 

" Standard tab=4spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

" Navigation
set number
set cursorline
set mouse=a

" Typos
command! W :w
command! Q :q
command! Wqa :wqa
command! WQa :wqa

" Compilation
nnoremap <F4> :make<CR>

set spell spelllang=pt,en
autocmd FileType latex,tex,md,markdown setlocal spell

" Tab navigation like Firefox. Doesn't work
nnoremap <C-S-tab> :bp<CR>
nnoremap <C-tab>   :bn<CR>

" Load configs based on filetype
filetype plugin on

colorscheme badwolf

syntax enable 

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

set number
set cursorline

set spell spelllang=pt,en
autocmd FileType latex,tex,md,markdown setlocal spell

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>


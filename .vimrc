set background=dark
set t_Co=256
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

" Search options
set hlsearch
set incsearch

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

" What a ride vim is

function! MakeSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif
  let b:filename = b:sessiondir . '/session.vim'
  exe "mksession! " . b:filename
endfunction

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction

" Adding automatons for when entering or leaving Vim
if(argc() == 0)
  au VimEnter * nested :call LoadSession()
endif
au VimLeave * :call MakeSession()

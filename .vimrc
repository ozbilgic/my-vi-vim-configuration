autocmd vimenter * NERDTree

map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

:tmap <S-Insert> <C-W>"+

so ~/.vim/plugins.vim

syntax enable
filetype plugin indent on
filetype on
filetype indent on
filetype plugin on
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set number
set shell=bash\ -l
set encoding=UTF-8
set colorcolumn=80

let NERDTreeShowHidden=1

let g:ale_linters = {
\   'ruby': ['standardrb', 'rubocop'],
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\    'ruby': ['standardrb'],
\}

let g:ale_fix_on_save = 1
set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=

" TAB to complate indexed text
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

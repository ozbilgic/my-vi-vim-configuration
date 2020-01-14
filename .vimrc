autocmd vimenter * NERDTree

map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

:tmap <S-Insert> <C-W>"+

so ~/.vim/plugins.vim

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set number

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

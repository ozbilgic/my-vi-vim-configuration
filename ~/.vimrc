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
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

set statusline+=%warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

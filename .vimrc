filetype on
set mouse=a
set tabpagemax=20

"kolor tła
set background=dark
set mouse=a
"integracje ze schowkiem systemowym
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

"inicjalizacja vundle'a
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Zależności vim-snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"

"Vim-snipmate - obsługa snippets'ów
Bundle "garbas/vim-snipmate"

"Moje repo ze snippets'ami
Bundle "dulaman/snippets.git"

"Powerline - lepszy statusbar
Bundle "Lokaltog/vim-powerline.git"

"Ctrl-P al'a Sublime i Atom
Bundle "kien/ctrlp.vim"

"Sprawdzanie składni
Bundle "scrooloose/syntastic.git"

"Wsparcie dla javascriptu
Bundle "pangloss/vim-javascript"
Bundle "jelera/vim-javascript-syntax"
Bundle "nathanaelkane/vim-indent-guides"

"Autouzupełnianie przy wpisywaniu (as-you-type)
Bundle "Valloric/YouCompleteMe"

"term.js - autouzupełnianie JS
Bundle "marijnh/tern_for_vim"

Bundle "Townk/vim-autoclose"

"autouzupełnianie PHP
Bundle "shawncplus/phpcomplete.vim"

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

set regexpengine=1
syntax enable

"Autouzupełnianie
autocmd  FileType  php setlocal completefunc=phpcomplete_extended#CompletePHP
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType twig setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
let g:ycm_cache_omnifunc = 1

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set wrap
set number

let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['twig'] = 'twig,html,javascript'
let g:snipMate.scope_aliases['html'] = 'html,javascript'

set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

"mapowanie klawiszy

"zapis
inoremap <C-s> <Esc>:w<CR>i
"zapis wszystkich
inoremap <C-S-s> <Esc>:wa<CR>i 
"cofanie + insert
inoremap <F3> <Esc>ui
"powtrzanie + insert
inoremap <F4> <C-r>
"dodawanie nowej linii
map <F5> i<End><CR><Esc> 

filetype plugin indent on

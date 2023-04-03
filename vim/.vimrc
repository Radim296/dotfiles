"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""         
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""Vundle""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
call vundle#end()            

filetype on                  
filetype plugin indent on    
filetype plugin on 
filetype indent on

" Netrw file explorer settings
let g:netrw_banner = 0 " hide banner above files
let g:netrw_liststyle = 3  "ree instead of plain view
let g:netrw_browse_split = 3 " vertical split window when Enter pressed on

set nowrap
syntax on 
set cursorline
set noswapfile
set nu 

set smartcase
set ignorecase

" Enable auto completion menu after pressing TAB.
set wildmenu
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set wildmode=list:longest

" set confirm
set nocompatible              
set title
set tabstop=4 
set shiftwidth=4
set fileencoding=utf-8
set autoindent
set smarttab
set relativenumber
set expandtab 
set softtabstop=4 
set t_Co=256
" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e'''' ``
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set mousehide "Спрятать курсор мыши когда набираем текст
set termencoding=utf-8 "Кодировка терминала
set novisualbell "Не мигать 
" Удобное поведение backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Вырубаем черточки на табах
set showtabline=1
" Переносим на другую строчку, разрываем строки
set wrap
set linebreak
"set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251
set clipboard=unnamed
set ruler

set guifont=Monaco:h15
colorscheme dracula

" Удобное перемещение по вкладкам
nnoremap H gT
nnoremap L gt
" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>

cnoreabbrev W w
cnoreabbrev Wq wq

if has("autocmd")
  augroup templates
    autocmd BufNewFile *.c 0r ~/.vim/templates/c_template.c
    autocmd BufNewFile *.py 0r ~/.vim/templates/py_template.py
  augroup END
endif

function! Compile_file() 
    if expand('%:e') ==# 'py'
        :!clear; python3 %
    elseif expand('%:e') ==# 'c'
        :!clear; gcc -Wall -o %.out %; ./%.out; rm %.out
    else
        echo "unknown filetype"
    endif
    
endfunction
" compilling by pressing f5<F5>
nnoremap <f5> :w <CR> :call Compile_file() <CR>
nnoremap <C-X> :mks! <CR> :wqa <CR>

" STATUS LINE 
" Clear status line when vimrc is reloaded.
set statusline=
" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R
" Use a divider to separate the left side from the right side.
set statusline+=%=
" Status line right side.
"set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
" Show the status on the second to last line.
set laststatus=2

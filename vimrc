"http://www.vim.org/scripts/script.php?script_id=2332
execute pathogen#infect()

syntax on
filetype plugin indent on

"http://kennedysgarage.com/articles/nerdtree
"Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
map <F4> :set list!<CR>

"https://github.com/scrooloose/syntastic
"plugin para validar sintaxis con syntastic"
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_auto_jump  = 1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"https://github.com/jelera/vim-javascript-syntax
au FileType javascript call JavaScriptFold()

"https://github.com/teramako/jscomplete-vim
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

"https://github.com/othree/javascript-libraries-syntax.vim
autocmd BufReadPre *.js let b:javascript_lib_use_jquery     = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone   = 0
autocmd BufReadPre *.js let b:javascript_lib_use_prelude    = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs  = 1

"Configuracion personal"
set encoding=utf-8
set shiftwidth=2
set expandtab
set ls=2            " allways show status line
set tabstop=2       " numbers of spaces of tab character
set scrolloff=3     " keep 3 lines when scrolling
set ignorecase      " Ignorar mayusculas y minusculas
set smartcase       " Busqueda con solo las primeras letras
set incsearch       " xxx
set foldmethod=indent "Muestra en folders  por identacion

set guioptions-=m   " Eliminar ventana de windows
set guioptions-=T   " Eliminar vantana de vim

" Indenting
set autoindent
set smartindent
set copyindent

set backupdir=~/.tmpvim/swap "Cambia el directorio de los archivos temporales ~
set directory=~/.tmpvim/backup "Cambia el directorio de los archivos .*.swp

" Use F3 when pasting to avoid applying indents
set pastetoggle=<F3>

" Use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" Commands to be rememebered
set history=500

" Change terminal title
set title

"Si el texto es muy largo se corta
set wrap

set list lcs=tab:→\ ,eol:¬,nbsp:☃


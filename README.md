Para instalar, debemos clonar y luego crear el acceso directo en la carpeta principal de nuestro ambiente.
Se crea el enlace de la configuracion de nuestro editor.

git clone https://github.com/aurigadl/vim-angularjs.git

ln -s ~/.vim/vimrc  ~/.vimrc

mkdir ~/.tmpvim

mkdir ~/.tmpvim/backup

mkdir ~/.tmpvim/swap


>> https://github.com/tpope/vim-pathogen
Instalador de plugins para vim


LINTER
>> https://github.com/scrooloose/syntastic
Configuracion de syntastic
Sintastic nos permite realizar la validacion del codigo mediante las herramientas que tenemos intalas en nuestro sistema operativo desde vim.
En nuestro caso esta configurado para evaluar Javascript, sass, php y Python.
	Javascript install jslint
	CSS install compass
	python install  pylint
>> git://github.com/digitaltoad/vim-jade.git
Vim syntax highlighting for Jade templates.

SYNTAX
>> https://github.com/jelera/vim-javascript-syntax
Mejora la lectura de codigo javascript resaltando elementos con distintos colores
>> http://www.vim.org/scripts/script.php?script_id=3081
Mejora la escritura de estructuras de javascript 
>> https://github.com/scrooloose/nerdcommenter
Manejo de comentarios.
>> https://github.com/myhere/vim-nodejs-complete
Completa el texto a escribir.
>>https://github.com/terryma/vim-multiple-cursors
Edicion de variables en multiples lineas 


SNIPPETS
>> https://github.com/msanders/snipmate.vim and https://github.com/jamescarr/snipmate-nodejs
snips para multiples lenguajes con adicion de node.
>> https://github.com/tpope/vim-surround
borra, adiciona, cambia por palabra y bloques.

TOOLS
>> https://github.com/vim-scripts/mru.vim
Permite ver los ultimos archivos trabajados.
>>
<F4> permite camiar espacios en blanco

STYLE
>> https://github.com/bronson/vim-trailing-whitespace
Eliminacion de espacios en blanco
>> https://github.com/godlygeek/tabular.git
Alinear texto por simbolos

GIT
>> https://github.com/tpope/vim-fugitive
Trabaja con git realizando todas las operciones sin salir del editor, con mejores prestaciones para la comparacion de archivos.

COMANDOS
>>Vim folding commands
zf#j creates a fold from the cursor down # lines.
zc
zf/string creates a fold from the cursor to string .
zj moves the cursor to the next fold.
zk moves the cursor to the previous fold.
zo opens a fold at the cursor.
zO opens all folds at the cursor.
zm increases the foldlevel by one.
zM closes all open folds.
zr decreases the foldlevel by one.
zR decreases the foldlevel to zero -- all folds will be open.
zd deletes the fold at the cursor.
zE deletes all folds.
[z move to start of open fold.
]z move to end of open fold.

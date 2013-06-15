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
Sintastic nos permite realizar la validacion del codigo mediante las herramientas que tenemos intalas en nuestro sistema operativo mediante desde vim.
En nuestro caso esta configurado para evaluar Javascript, sass, php y Python.
	Javascript install jslint
	CSS install compass
	python install  pylint


SYNTAX
>> https://github.com/jelera/vim-javascript-syntax
Mejora la lectura de codigo javascript resaltando elementos con distintos colores
>> http://www.vim.org/scripts/script.php?script_id=3081
Mejora la escritura de estructuras de javascript 
>> https://github.com/scrooloose/nerdcommenter
Manejo de comentarios 
>> https://github.com/myhere/vim-nodejs-complete
Completa el texto a escribir


SNIPPETS
>> https://github.com/msanders/snipmate.vim and https://github.com/jamescarr/snipmate-nodejs
snips para multiples lenguajes con adicion de node


STYLE
>> https://github.com/bronson/vim-trailing-whitespace
Eliminacion de espacios en blanco
>> https://github.com/godlygeek/tabular.git
Alinear texto por simbolos


SVC
>> https://github.com/tpope/vim-fugitive

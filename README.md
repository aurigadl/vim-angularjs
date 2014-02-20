Para instalar, debemos clonar y luego crear el acceso directo en la carpeta principal de nuestro ambiente.
Se crea el enlace de la configuracion de nuestro editor.

cd ~/

git clone https://github.com/aurigadl/vim-angularjs.git .vim

ln -s ~/.vim/vimrc  ~/.vimrc

mkdir ~/.tmpvim

mkdir ~/.tmpvim/backup

mkdir ~/.tmpvim/swap


>> https://github.com/tpope/vim-pathogen
Instalador de plugins para vim


LINTER
>> https://github.com/scrooloose/syntastic
Configuracion de syntastic<br />
Sintastic nos permite realizar la validacion del codigo mediante las herramientas que tenemos instaladas en nuestro sistema operativo desde vim.<br />
En nuestro caso esta configurado para evaluar Javascript, sass, php y Python.<br />
	Javascript  npm install jslint<br />
	CSS install compass<br />
	pylint  sudo apt-get install pylint<br />
	jsonlint npm install -g jsonlint<br />

>> git://github.com/digitaltoad/vim-jade.git
Vim syntax highlighting for Jade templates.

SYNTAX
>> https://github.com/jelera/vim-javascript-syntax
Mejora la lectura de codigo javascript resaltando elementos con distintos colores<br />
>> http://www.vim.org/scripts/script.php?script_id=3081
Mejora la escritura de estructuras de javascript<br />
>> https://github.com/scrooloose/nerdcommenter
Manejo de comentarios.<br />
>> https://github.com/myhere/vim-nodejs-complete
Completa el texto a escribir.<br />
>>https://github.com/terryma/vim-multiple-cursors
Edicion de variables en multiples lineas<br />
>> git://github.com/jiangmiao/auto-pairs.git
Insert or delete brackets, parens, quotes in pair.<br />

SNIPPETS
>> https://github.com/msanders/snipmate.vim and https://github.com/jamescarr/snipmate-nodejs
snips para multiples lenguajes con adicion de node.<br />
>> https://github.com/tpope/vim-surround
borra, adiciona, cambia por palabra y bloques.<br />
>> https://github.com/matthewsimo/angular-vim-snippets
This repository contains snippets files for AngularJS including JavaScript, HTML, CoffeeScript and HAML.

TOOLS
>> https://github.com/vim-scripts/mru.vim
Permite ver los ultimos archivos trabajados.<br />

>>
<F4> permite camiar espacios en blanco<br />


STYLE
>> https://github.com/bronson/vim-trailing-whitespace
Eliminacion de espacios en blanco<br />

>> https://github.com/godlygeek/tabular.git
Alinear texto por simbolos<br />


GIT
>> https://github.com/tpope/vim-fugitive
Trabaja con git realizando todas las operciones sin salir del editor, con mejores prestaciones para la comparacion de archivos.<br />


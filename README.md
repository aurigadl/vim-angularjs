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
Configuracion de syntastic<br />
Sintastic nos permite realizar la validacion del codigo mediante las herramientas que tenemos instaladas en nuestro sistema operativo desde vim.<br />
En nuestro caso esta configurado para evaluar Javascript, sass, php y Python.<br />
	Javascript install jslint<br />
	CSS install compass<br />
	python install  pylint<br />
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


SNIPPETS
>> https://github.com/msanders/snipmate.vim and https://github.com/jamescarr/snipmate-nodejs
snips para multiples lenguajes con adicion de node.<br />
>> https://github.com/tpope/vim-surround
borra, adiciona, cambia por palabra y bloques.<br />

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


COMANDOS
>>Vim folding commands<br />
zf#j creates a fold from the cursor down # lines.<br />
zc<br />
zf/string creates a fold from the cursor to string .<br />
zj moves the cursor to the next fold.<br />
zk moves the cursor to the previous fold.<br />
zo opens a fold at the cursor.<br />
zO opens all folds at the cursor.<br />
zm increases the foldlevel by one.<br />
zM closes all open folds.<br />
zr decreases the foldlevel by one.<br />
zR decreases the foldlevel to zero -- all folds will be open.<br />
zd deletes the fold at the cursor.<br />
zE deletes all folds.<br />
[z move to start of open fold.<br />
]z move to end of open fold.<br />

:Gedit
:Gsplit
:Gvsplit
:Gtabedit
:Gdiff
:Gstatus add/reset  add/reset --patch :Gcommit
:Gblame
:Gmove
:Ggrep
:Glog
:Gread
:Gwrite
:Gbrowse

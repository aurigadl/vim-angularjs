jscomplete-vim
==============

The modern complement Vim plugin for JavaScript guys.

Using as omnifunc
---------------

Set `jscomplete#CompleteJS` to `omnifunc` in your `.vimrc` like this.

    autocmd FileType javascript
      \ :setl omnifunc=jscomplete#CompleteJS

Then available complement properties after `.`,`[` keywords.

Using as neocomplcache plugin
---------------------------

[neocomplcache](https://github.com/Shougo/neocomplcache) is the Vim plugin to keyword completion.
No more is necessary to basically using.

Optional extensions
-------------------

Extension scripts under the `autoload/js/` will be loaded with set list to
`g:jscomplete_use` or `b:jscomplete_use` in your `.vimrc` like this.

    :let g:jscomplete_use = ['dom', 'moz']

- `dom.vim` : Adding DOM keywords completion.
- `moz.vim` : Adding Mozilla JavaScript keywords completion.
- `xpcom.vim` : Adding Mozilla XPCOM component keywords completion.
- `es6th.vim` : Adding ECMAScript 6th keywords completion.

Command
-------

###:JSCompleteUse
for loading jscomplete's extensions

    :JSCompleteUse [<pluginName>, ...]

- show loaded and non-loaded extensions if omitted arguments
  - `+`: loaded extensions
  - `-`: non-loaded extensions

Thanks: http://www.okuryu.com/2012/05/24/introduce-jscomplete-vim.html


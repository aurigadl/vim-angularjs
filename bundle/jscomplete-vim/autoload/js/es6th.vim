" vim: set fdm=marker:
" Vim completion for ECMAScript 6th

let s:save_cpo = &cpo
set cpo&vim

" ECMAScript 6th {{{1
let s:ES6 = {}
" Object {{{2
let s:ES6.ObjectProps = {
  \   'isObject' : {'kind': 'f', 'menu': '[Object]', 'type': 'Boolean'},
  \ }
" 2}}}
" Array {{{2
let s:ES6.ArrayProps = {
  \   'of':   {'kind': 'f', 'menu': '[Array]', 'type': 'Array'},
  \   'from': {'kind': 'f', 'menu': '[Array]', 'type': 'Array'},
  \ }
" 2}}}
" String {{{2
let s:ES6.StringPrototypeProps = {
  \   'repeat':     {'kind': 'f', 'menu': '[String]', 'type': 'String'},
  \   'startsWith': {'kind': 'f', 'menu': '[String]', 'type': 'Boolean'},
  \   'endsWith':   {'kind': 'f', 'menu': '[String]', 'type': 'Boolean'},
  \   'contains':   {'kind': 'f', 'menu': '[String]', 'type': 'Boolean'},
  \   'toArray':    {'kind': 'f', 'menu': '[String]', 'type': 'Array'},
  \ }
" 2}}}
" Number {{{2
let s:ES6.NumberProps = {
  \   'EPSILON':     {'kind': 'v', 'menu': '[Number]', 'type': 'Number'},
  \   'MAX_INTEGER': {'kind': 'v', 'menu': '[Number]', 'type': 'Number'},
  \   'parseInt':    {'kind': 'f', 'menu': '[Number]', 'type': 'Number'},
  \   'parseFloat':  {'kind': 'f', 'menu': '[Number]', 'type': 'Number'},
  \   'isNaN':       {'kind': 'f', 'menu': '[Number]', 'type': 'Boolean'},
  \   'isFinite':    {'kind': 'f', 'menu': '[Number]', 'type': 'Boolean'},
  \   'isInteger':   {'kind': 'f', 'menu': '[Number]', 'type': 'Boolean'},
  \   'toInt':       {'kind': 'f', 'menu': '[Number]', 'type': 'Number'},
  \ }
let s:ES6.NumberPrototypeProps = {
  \   'clz': {'kind': 'f', 'menu': '[Number]', 'type': 'Number'},
  \ }
" 2}}}
" Math {{{2
let s:ES6.MathProps = {
  \   'log10':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'log2':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'log1p':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'expm1':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'cosh':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'sinh':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'tanh':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'acosh':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'asinh':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'atanh':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'hypot':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'trunc':  {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'sign':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \   'cbrt':   {'kind': 'f', 'menu': '[Math]', 'type': 'Number'},
  \ }
" 2}}}
let s:ES6.GlobalObject = {}
" WeakMap {{{2
let s:ES6.GlobalObject.WeakMap = {
  \   'kind': 'f', 'type': 'WeakMap', 'menu': '[WeakMap]',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[WeakMap]', 'class': 'WeakMap',
  \       'props': {
  \         'delete': {'kind': 'f', 'menu': '[WeakMap]', 'type': 'Boolean'},
  \         'get':    {'kind': 'f', 'menu': '[WeakMap]'},
  \         'has':    {'kind': 'f', 'menu': '[WeakMap]', 'type': 'Boolean'},
  \         'set':    {'kind': 'f', 'menu': '[WeakMap]', 'type': ''},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Set {{{2
let s:ES6.GlobalObject.Set = {
  \   'kind': 'f', 'type': 'Set', 'menu': '[Set]',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Set]', 'class': 'Set',
  \       'props': {
  \         'add':    {'kind': 'f', 'menu': '[Set]', 'type': ''},
  \         'delete': {'kind': 'f', 'menu': '[Set]', 'type': 'Boolean'},
  \         'has':    {'kind': 'f', 'menu': '[Set]', 'type': 'Boolean'},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Map {{{2
let s:ES6.GlobalObject.Map = {
  \   'kind': 'f', 'type': 'Map', 'menu': '[Map]',
  \   'props': {
  \     'prototype': {
  \       'kind': 'v', 'type': 'Object', 'menu': '[Map]', 'class': 'Map',
  \       'props': {
  \         'get':    {'kind': 'f', 'menu': '[Map]'},
  \         'delete': {'kind': 'f', 'menu': '[Map]', 'type': 'Boolean'},
  \         'has':    {'kind': 'f', 'menu': '[Map]', 'type': 'Boolean'},
  \         'set':    {'kind': 'f', 'menu': '[Map]', 'type': ''},
  \       }
  \     }
  \   }
  \ }
" 2}}}
" Proxy {{{2
let s:ES6.GlobalObject.Proxy = {
  \   'kind': 'v', 'type': 'Object', 'menu': '[Proxy]', 'props': {
  \     'create':         {'kind': 'f', 'menu': '[Proxy]', 'type': 'Object'},
  \     'createFunction': {'kind': 'f', 'menu': '[Proxy]', 'type': 'Function'}
  \   }
  \ }
" 2}}}
" 1}}}

function! js#es6th#Extend (names)
  if !exists('b:GlobalObject')
    return
  endif
  call extend(b:GlobalObject, s:ES6.GlobalObject)
  call extend(b:GlobalObject.Object.props, s:ES6.ObjectProps)
  call extend(b:GlobalObject.Array.props, s:ES6.ArrayProps)
  call extend(b:GlobalObject.String.props.prototype.props, s:ES6.StringPrototypeProps)
  call extend(b:GlobalObject.Number.props, s:ES6.NumberProps)
  call extend(b:GlobalObject.Number.props.prototype.props, s:ES6.NumberPrototypeProps)
  call extend(b:GlobalObject.Math.props, s:ES6.MathProps)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo


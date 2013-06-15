
let s:save_cpo = &cpo
set cpo&vim

function s:SID()
  if exists('s:SID_PREFIX')
    return s:SID_PREFIX
  else
    let s:SID_PREFIX = matchstr(expand('<sfile>'), '\zs<SNR>\d\+_\zeSID$')
    return s:SID_PREFIX
  endif
endfunction

let s:WshArguments = {
  \   'Item':    {'kind': 'f', 'menu': '[WshArguments]', 'type': 'String'},
  \   'Length':  {'kind': 'v', 'menu': '[WshArguments]', 'type': 'Number'},
  \   'Count':   {'kind': 'f', 'menu': '[WshArguments]', 'type': 'Number'},
  \   'Named':   {
  \     'kind': 'f', 'type': 'String', 'menu': '[WshArguments]', 'props': {
  \       'Item':    {'kind': 'f', 'menu': '[WshNamed]', 'type': 'String'},
  \       'Exists':  {'kind': 'f', 'menu': '[WshNamed]', 'type': 'String'},
  \       'Count':   {'kind': 'f', 'menu': '[WshNamed]', 'type': 'Number'},
  \       'length':  {'kind': 'v', 'menu': '[WshNamed]', 'type': 'Number'},
  \     }
  \   },
  \   'Unnamed': {
  \     'kind': 'f', 'type': 'String', 'menu': '[WshArguments]', 'props': {
  \       'Item':    {'kind': 'f', 'menu': '[WshUnnamed]', 'type': 'String'},
  \       'Count':   {'kind': 'f', 'menu': '[WshUnnamed]', 'type': 'Number'},
  \       'length':  {'kind': 'v', 'menu': '[WshUnnamed]', 'type': 'Number'},
  \     }
  \   },
  \ }

function s:GetInputStreamType (parent)
  return {
    \   'kind': 'v', 'type': '', 'menu': '[TextInputStream]', 'props': {
    \     'Read':          {'kind': 'f', 'menu': '[TextInputStraem]', 'type': 'String'},
    \     'ReadAll':       {'kind': 'f', 'menu': '[TextInputStraem]', 'type': 'String'},
    \     'ReadLine':      {'kind': 'f', 'menu': '[TextInputStraem]', 'type': 'String'},
    \     'Skip':          {'kind': 'f', 'menu': '[TextInputStraem]'},
    \     'SkipLine':      {'kind': 'f', 'menu': '[TextInputStraem]'},
    \     'Close':         {'kind': 'f', 'menu': '[TextInputStraem]'},
    \     'Column':        {'kind': 'v', 'menu': '[TextInputStraem]', 'type': 'Number'},
    \     'Line':          {'kind': 'v', 'menu': '[TextInputStraem]', 'type': 'Number'},
    \     'AtEndOfLine':   {'kind': 'v', 'menu': '[TextInputStream]', 'type': 'Boolean'},
    \     'AtEndOfStream': {'kind': 'v', 'menu': '[TextInputStream]', 'type': 'Boolean'},
    \   },
    \ }
endfunction
function s:GetOutputStreamType (parent)
  return {
    \   'kind': 'v', 'type': '', 'menu': '[TextOutputStream]', 'props': {
    \     'Write':           {'kind': 'f', 'menu': '[TextOutputStream]'},
    \     'WriteBlankLines': {'kind': 'f', 'menu': '[TextOutputStream]'},
    \     'WriteLine':       {'kind': 'f', 'menu': '[TextOutputStream]'},
    \     'Close':           {'kind': 'f', 'menu': '[TextOutputStream]'},
    \     'Column':          {'kind': 'f', 'menu': '[TextOutputStream]', 'type': 'Number'},
    \     'Line':            {'kind': 'f', 'menu': '[TextOutputStream]', 'type': 'Number'},
    \   }
    \ }
endfunction

function s:GetWshEnvironmentType (arguments, parent)
  return {
    \   'kind': 'f', 'type': 'String', 'menu': '[WshEnvironment]', 'props': {
    \     'Item':   {'kind': 'f', 'menu': '[WshEnvironment]', 'type': 'String'},
    \     'length': {'kind': 'v', 'menu': '[WshEnvironment]', 'type': 'Number'},
    \     'Count':  {'kind': 'f', 'menu': '[WshEnvironment]', 'type': 'Number'},
    \     'Remove': {'kind': 'f', 'menu': '[WshEnvironment]'},
    \   }
    \ }
endfunction

function s:GetWshScriptExecType (parent)
  return {
    \   'kind': 'v', 'type': '', 'menu': '[WshScriptExec]', 'props': {
    \     'Status':    {'kind': 'v', 'menu': '[WshScriptExec]', 'type': 'Number'},
    \     'StdOut':    {'kind': 'v', 'menu': '[WshScriptExec]', 'type': function(s:SID().'GetOutputStreamType')},
    \     'StdIn':     {'kind': 'v', 'menu': '[WshScriptExec]', 'type': function(s:SID().'GetInputStreamType')},
    \     'StdErr':    {'kind': 'v', 'menu': '[WshScriptExec]', 'type': function(s:SID().'GetInputStreamType')},
    \     'Terminate': {'kind': 'v', 'menu': '[WshScriptExec]'},
    \   }
    \ }
endfunction

let s:jscript = {}
let s:jscript.WScript = {
  \   'kind': 'v', 'type': '', 'props': {
  \     'Arguments':        {'kind': 'f', 'menu': '[WScript]', 'type': 'String', 'props': s:WshArguments},
  \     'FullName':         {'kind': 'v', 'menu': '[WScript]', 'type': 'String'},
  \     'Name':             {'kind': 'v', 'menu': '[WScript]', 'type': 'String'},
  \     'Path':             {'kind': 'v', 'menu': '[WScript]', 'type': 'String'},
  \     'ScriptFullName':   {'kind': 'v', 'menu': '[WScript]', 'type': 'String'},
  \     'ScriptName':       {'kind': 'v', 'menu': '[WScript]', 'type': 'String'},
  \     'Version':          {'kind': 'v', 'menu': '[WScript]', 'type': 'String'},
  \     'StdIn':            {'kind': 'v', 'menu': '[WScript] STDIN',  'type': function(s:SID().'GetInputStreamType')},
  \     'StdErr':           {'kind': 'v', 'menu': '[WScript] STDERR', 'type': function(s:SID().'GetInputStreamType')},
  \     'StdOut':           {'kind': 'v', 'menu': '[WScript] STDOUT', 'type': function(s:SID().'GetOutputStreamType')},
  \     'CreateObject':     {'kind': 'f', 'menu': '[WScript]'},
  \     'ConnectObject':    {'kind': 'f', 'menu': '[WScript]'},
  \     'DisconnectObject': {'kind': 'f', 'menu': '[WScript]'},
  \     'Echo':             {'kind': 'f', 'menu': '[WScript]'},
  \     'GetObject':        {'kind': 'f', 'menu': '[WScript]'},
  \     'Quit':             {'kind': 'f', 'menu': '[WScript]'},
  \     'Sleep':            {'kind': 'f', 'menu': '[WScript]'},
  \   }
  \ }
let s:jscript.ActiveXObject = {'kind': 'f', 'menu': 'Create COM Object'}

function s:jscript.WScript.props.CreateObject.type (arguments, parent)
  let str = get(get(a:arguments, 0, {}), 'value', '')
  return s:GetCOMObject(str)
endfunction
function s:jscript.ActiveXObject.newType (arguments, parent)
  let str = get(get(a:arguments, 0, {}), 'value', '')
  return {'props': {'prototype': s:GetCOMObject(str)}}
endfunction

function s:GetCOMObject (name)
  if empty(a:name)
    return ''
  endif

  let name = tolower(a:name)
  if has_key(s:COMObject, name)
    return s:COMObject[name]
  endif
  return 'Object'
endfunction

let s:COMObject = {
  \   'wscript.shell': {
  \     'kind': 'v', 'type': '', 'props': {
  \       'CurrentDirectory':         {'kind': 'v', 'menu': '[WshShell]', 'type': 'String'},
  \       'Environment':              {'kind': 'f', 'menu': '[WshShell]', 'type': function(s:SID().'GetWshEnvironmentType')},
  \       'SpecialFolders':           {'kind': 'f', 'menu': '[WshShell]', 'type': 'String'},
  \       'AppActivate':              {'kind': 'f', 'menu': '[WshShell]'},
  \       'CreateShortcut':           {'kind': 'f', 'menu': '[WshShell]'},
  \       'ExpandEnvironmentStrings': {'kind': 'f', 'menu': '[WshShell]', 'type': 'String'},
  \       'LogEvent':                 {'kind': 'f', 'menu': '[WshShell]'},
  \       'Popup':                    {'kind': 'f', 'menu': '[WshShell]'},
  \       'RegDelete':                {'kind': 'f', 'menu': '[WshShell]'},
  \       'RegRead':                  {'kind': 'f', 'menu': '[WshShell]'},
  \       'RegWrite':                 {'kind': 'f', 'menu': '[WshShell]'},
  \       'Run':                      {'kind': 'f', 'menu': '[WshShell]', 'type': 'Number'},
  \       'SendKeys':                 {'kind': 'f', 'menu': '[WshShell]'},
  \       'Exec':                     {'kind': 'f', 'menu': '[WshShell]', 'type': function(s:SID().'GetWshScriptExecType')},
  \     }
  \   },
  \   'wscript.network': {
  \     'kind': 'v', 'type': '', 'props': {
  \       'ComputerName': {'kind': 'v', 'menu': '[WshNetwork]', 'type': 'String'},
  \       'UserDomain':   {'kind': 'v', 'menu': '[WshNetwork]', 'type': 'String'},
  \       'UserName':     {'kind': 'v', 'menu': '[WshNetwork]', 'type': 'String'},
  \       'AddWindowsPrinterConnection': {'kind': 'f', 'menu': '[WshNetwork]'},
  \       'AddPinterConnection':         {'kind': 'f', 'menu': '[WshNetwork]'},
  \       'EnumNetworkDrives':           {'kind': 'f', 'menu': '[WshNetwork]'},
  \       'EnumPrinterConnection':       {'kind': 'f', 'menu': '[WshNetwork]'},
  \       'MapNetworkDrive':             {'kind': 'f', 'menu': '[WshNetwork]'},
  \       'RemoveNetworkDrive':          {'kind': 'f', 'menu': '[WshNetwork]'},
  \       'RemovePrinterConnection':     {'kind': 'f', 'menu': '[WshNetwork]'},
  \       'SetDefaultPrinter':           {'kind': 'f', 'menu': '[WshNetwork]'},
  \     }
  \   },
  \   'msxml2.xmlhttp': {
  \     'kind': 'v', 'type': 'Object', 'props': {
  \       'onreadystatechange':    {'kind': 'v', 'menu': '[msxml2.xmlhttp]', 'type': 'Function'},
  \       'readyState':            {'kind': 'v', 'menu': '[msxml2.xmlhttp]', 'type': 'Number'},
  \       'responseBody':          {'kind': 'v', 'menu': '[msxml2.xmlhttp]', 'type': 'String'},
  \       'responseStream':        {'kind': 'v', 'menu': '[msxml2.xmlhttp]', 'type': 'String'},
  \       'responseText':          {'kind': 'v', 'menu': '[msxml2.xmlhttp]', 'type': 'String'},
  \       'responseXML':           {'kind': 'v', 'menu': '[msxml2.xmlhttp]', 'type': 'String'},
  \       'status':                {'kind': 'v', 'menu': '[msxml2.xmlhttp]', 'type': 'Number'},
  \       'statusText':            {'kind': 'v', 'menu': '[msxml2.xmlhttp]', 'type': 'String'},
  \       'abort':                 {'kind': 'f', 'menu': '[msxml2.xmlhttp]', 'type': ''},
  \       'getAllResponseHeaders': {'kind': 'f', 'menu': '[msxml2.xmlhttp]', 'type': 'String'},
  \       'getResponseHeader':     {'kind': 'f', 'menu': '[msxml2.xmlhttp]', 'type': 'String'},
  \       'open':                  {'kind': 'f', 'menu': '[msxml2.xmlhttp]', 'type': ''},
  \       'send':                  {'kind': 'f', 'menu': '[msxml2.xmlhttp]', 'type': ''},
  \       'setRequestHeader':      {'kind': 'f', 'menu': '[msxml2.xmlhttp]', 'type': ''},
  \     } 
  \   }
  \ }

function! js#jscript#Extend (names)
  if !exists('b:GlobalObject')
    return
  endif

  call extend(b:GlobalObject, s:jscript)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo


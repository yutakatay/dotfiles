" do not use a/d/r(sandwich)
nnoremap <debugger>   <Nop>
nmap    s <debugger>
command! SpectorLaunch call vimspector#Launch()
command! SpectorStop VimspectorReset
nmap <debugger>c  <Plug>VimspectorContinue
nmap <debugger>q  <Plug>VimspectorStop
nmap <debugger>t  <Plug>VimspectorRestart
nmap <debugger>,  <Plug>VimspectorPause
nmap <debugger>b  <Plug>VimspectorToggleBreakpoint
nmap <debugger>f  <Plug>VimspectorAddFunctionBreakpoint
nmap <debugger>n  <Plug>VimspectorStepOver
nmap <debugger>i  <Plug>VimspectorStepInto
nmap <debugger>o  <Plug>VimspectorStepOut

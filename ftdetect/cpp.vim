"=============================================================================
" Check SystemC File
" FILE: cpp.vim
" AUTHOR:  Kocha <kocha.lsifrontend@gmail.com>
" Last Modified: 19-Sep-2013.
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
" Version: 0.2.1
"=============================================================================

let s:save_cpo = &cpo
set cpo&vim

function! Check_SystemC()
  let line_num = (line('$') > 50)? 50 : line('$')
  while (line_num)
    " Check for systemc keywords
    if getline(line_num) =~? 'systemc\|sc_[a-z]*\|scv_[a-z]*\|tlm_[a-z]*\|sca_[a-z]*\'
      let b:syntastic_cpp_cflags = ''
      " SYSTMEC_HOME
      if $SYSTEMC_HOME != ""
        set path+=$SYSTEMC_HOME/include
        let b:syntastic_cpp_cflags .= ' -I$SYSTEMC_HOME/include'
      endif
      " TLM_HOME
      if $TLM_HOME != ""
        set path+=$TLM_HOME/include/tlm
        let b:syntastic_cpp_cflags .= ' -I$TLM_HOME/include/tlm'
      endif
      " SYSTEMC_AMS_HOME
      if $SYSTEMC_AMS_HOME != ""
        set path+=$SYSTEMC_AMS_HOME/include
        let b:syntastic_cpp_cflags .= ' -I$SYSTEMC_AMS_HOME/include'
      endif
      " SCV_HOME
      if $SCV_HOME != ""
        set path+=$SCV_HOME/include
        let b:syntastic_cpp_cflags .= ' -I$SCV_HOME/include'
      endif
      return "systemc"
    endif
    let line_num -= 1
  endwhile
  return "cpp"
endfunction

" Check file SystemC
let s:file_syntax = Check_SystemC()
if(s:file_syntax == "systemc")
  " echohl Comment | echo "Detected SystemC file" | echohl None
  setlocal syntax=systemc
  finish
endif

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: foldmethod=marker

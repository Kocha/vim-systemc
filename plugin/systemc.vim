"=============================================================================
" Vim Coding Support for SystemC
" FILE: systemc.vim
" AUTHOR:  Kocha <kocha.lsifrontend@gmail.com>
" Last Modified: 27 Feb 2012.
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
" Version: 0.1.0, for Vim 7.3
"=============================================================================

"=================================================
" Check if the file is a SystemC file
" 
function! Check_SystemC()
  let line_num = (line('$') > 50)? 50 : line('$')
  while (line_num)
    " Check for systemc keywords
    if getline(line_num) =~? 'systemc\|sc_[a-z]+'
       return "systemc"
    endif
    let line_num -= 1
  endwhile
  return "cpp"
endfunction

" vim: foldmethod=marker

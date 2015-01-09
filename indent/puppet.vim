" # @@@ START COPYRIGHT @@@
" #
" # (C) Copyright 2015 Hewlett-Packard Development Company, L.P.
" #
" # Puppet - Automating Configuration Management.
" #
" # Copyright (C) 2011 Puppet Labs Inc
" #
" # Puppet Labs can be contacted at: info@puppetlabs.com
" #
" # Licensed under the Apache License, Version 2.0 (the "License");
" # you may not use this file except in compliance with the License.
" # You may obtain a copy of the License at
" #
" #     http://www.apache.org/licenses/LICENSE-2.0
" #
" # Unless required by applicable law or agreed to in writing, software
" # distributed under the License is distributed on an "AS IS" BASIS,
" # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" # See the License for the specific language governing permissions and
" # limitations under the License.
" #
" # @@@ END COPYRIGHT @@@
"
" Vim indent file
" Language:	Puppet
" Maintainer:	Todd Zullinger <tmz@pobox.com>
" Last Change:	2009 Aug 19
" vim: set sw=4 sts=4:

if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal autoindent smartindent
setlocal indentexpr=GetPuppetIndent()
setlocal indentkeys+=0],0)

if exists("*GetPuppetIndent")
    finish
endif

" Check if a line is part of an include 'block', e.g.:
"   include foo,
"       bar,
"       baz
function! s:PartOfInclude(lnum)
    let lnum = a:lnum
    while lnum
        let lnum = lnum - 1
        let line = getline(lnum)
        if line !~ ',$'
            break
        endif
        if line =~ '^\s*include\s\+[^,]\+,$'
            return 1
        endif
    endwhile
    return 0
endfunction

function! s:OpenBrace(lnum)
    call cursor(a:lnum, 1)
    return searchpair('{\|\[\|(', '', '}\|\]\|)', 'nbW')
endfunction

function! GetPuppetIndent()
    let pnum = prevnonblank(v:lnum - 1)
    if pnum == 0
       return 0
    endif

    let line = getline(v:lnum)
    let pline = getline(pnum)
    let ind = indent(pnum)

    if pline =~ '^\s*#'
        return ind
    endif

    if pline =~ '\({\|\[\|(\|:\)$'
        let ind += &sw
    elseif pline =~ ';$' && pline !~ '[^:]\+:.*[=+]>.*'
        let ind -= &sw
    elseif pline =~ '^\s*include\s\+.*,$'
        let ind += &sw
    endif

    if pline !~ ',$' && s:PartOfInclude(pnum)
        let ind -= &sw
    endif

    " Match } }, }; ] ]: )
    if line =~ '^\s*\(}\(,\|;\)\?$\|]:\?$\|)\)'
        let ind = indent(s:OpenBrace(v:lnum))
    endif

    return ind
endfunction

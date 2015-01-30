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
" Vim filetype plugin
" Language: Python

if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" detect python filetype
au FileType python colorscheme murphy

" Wrapping and tabs.
set tw=78 ts=4 sw=4 sta et sts=4 ai

" Wrap at 78 chars for comments
set formatoptions=cq textwidth=78 foldignore= wildignore+=*.py[co]

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" More syntax highlighting.
let python_highlight_all = 1 

" Auto completion via ctrl-space
set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>
inoremap # X^H#

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" detect python filetype
au BufRead,BufNewFile *.py    set filetype=python
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

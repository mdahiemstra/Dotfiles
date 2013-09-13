set shiftwidth=4
set softtabstop=4
set tabstop=4
set nowrap
set incsearch
set expandtab
set listchars=tab:+-,trail:-
set list

set number
set mouse=a
syntax enable

au BufRead,BufNewFile *.csi set filetype=xml
au BufRead,BufNewFile *.cst set filetype=xml
au BufRead,BufNewFile *.phpsh set filetype=php
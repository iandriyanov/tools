syntax on
colorscheme elflord
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set showtabline=2
set nobackup
set noswapfile
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set noautoindent
set nocompatible

autocmd BufNewFile *.sh 0r ~/.vim/headers/sh_header.txt
autocmd bufnewfile *.sh exe "1," . 20 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.sh exe "1," . 20 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.sh execute "normal ma"
autocmd Bufwritepre,filewritepre *.sh exe "1," . 20 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.sh execute "normal `a"
autocmd bufnewfile *.sh exe "1," . 20 . "g/Created By :.*/s//Created By : " .system("whoami")
"autocmd bufnewfile *.sh exe "1," . 20 . "g/AUTHOR :.*/s//AUTHOR : " .system("whoami")


autocmd BufNewFile *.py 0r ~/.vim/headers/py_header.txt
autocmd bufnewfile *.py exe "1," . 20 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.py exe "1," . 20 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.py execute "normal ma"
autocmd Bufwritepre,filewritepre *.py exe "1," . 20 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.py execute "normal `a"
autocmd bufnewfile *.py exe "1," . 20 . "g/Created By :.*/s//Created By : " .system("whoami")
"autocmd bufnewfile *.sh exe "1," . 20 . "g/AUTHOR :.*/s//AUTHOR : " .system("whoami")
"


"if has("autocmd")
"    autocmd FileType python set complete+=k/path/to/pydiction iskeyword+=.,( 
"endif " has("autocmd")

" Enable file type plugins
filetype plugin on
let g:pydiction_location='/home/`whoami`/.vim/after/pydiction/complete-dict'

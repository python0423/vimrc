" Options list
set nu
syntax on
set ruler
if version >=603
	set helplang=cn
	set encoding=utf-8
endif
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk,cp936
set cursorline
set cindent
set tabstop=4
set history=1000
set ignorecase
set shiftwidth=4
set nobackup
set nowritebackup
set shortmess=alI "close start info up
set nocompatible



" Plugin list
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Add extra plugin
" tab function
Plugin 'scrooloose/nerdcommenter'
" auto pairs
Plugin 'jiangmiao/auto-pairs'
" auto complete
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on



" Map key
:nmap <Space> <PageDown>
:nmap <BackSpace> <PageUp>
:map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
	exec 'w'
	if &filetype == 'c'
		exec "!gcc % -o %< "
		exec "! ./%<"
	endif
	if &filetype == 'python'
		exec "!python %"
	endif
	if &filetype == 'sh'
		exec "!../%"
	endif
endfunc

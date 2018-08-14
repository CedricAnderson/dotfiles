" Basics
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number
	set tabstop=4
	set softtabstop=0 noexpandtab
	set shiftwidth=4
	set autoindent
	set smartindent
	set wrap
	set linebreak

" Disable automatic commenting on new line
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Remap splits navigations
 	nnoremap <C-J> <C-W><C-J>
 	nnoremap <C-K> <C-W><C-K>
 	nnoremap <C-L> <C-W><C-L>
 	nnoremap <C-H> <C-W><C-H>


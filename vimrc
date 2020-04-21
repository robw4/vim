" ----- Plugins using Vundle ----
set nocompatible    "required
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" code folding
Plugin 'tmhedberg/SimpylFold'
" code completion
Plugin 'Valloric/YouCompleteMe' 
"pep 8 hightlighting
Plugin 'dense-analysis/ale'
" Color schemes
Plugin 'lifepillar/vim-solarized8'
Plugin 'jnurmine/Zenburn' 
" File Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Better searching
Plugin 'kien/ctrlp.vim'
"Git Integration
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'
"Display bar
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'python-mode/python-mode'
call vundle#end()            " required
filetype plugin indent on    " required

" ----- Custom Keys
let mapleader=','
" Allow moving from one pane to a next
map <leader><left> <C-w><left>
map <leader><right> <C-w><right>
map <leader><down> <C-w><down>
map <leader><up> <C-w><up>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"Custom keys
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration <CR>
nnoremap <leader>r  :YcmCompleter GoToReferences<CR>
nnoremap <leader>h  :YcmCompleter GetDoc<CR>
" Set toggles
nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <space> za       " Make space fold code block
noremap <F2> :ALEToggle<CR>
"nnoremap <leader><space> za
" -- Python formatting
au BufNewFile,BufRead *.py set textwidth=120
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix
" Setup for managing white space
"highlight BadWhitespace ctermbg=red guibg=red
"au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h mat.ch BadWhitespace /\s\+$/
autocmd FileType python set autoindent    "Set up autoidenting from previous line
" Python Highlighting
let python_highlight_all=1
syntax on
hi pythonSelf  ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold

" --- Set parameters
"" Allow code folding
set foldmethod=indent   "Fold at indents
set foldlevel=99
set nu    "Line numbering on
set hlsearch  "Highlight when searching
set backspace=indent,eol,start

" Code Linting
let g:ale_python_pylint_options='--max-line-length=240'
" Display docstrings
let g:SimpylFold_docstring_preview=1
let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_goto_buffer_command='split'

" --- Colorscheme ---
"colorscheme darcula
"let g:solarized_termcolors=256
set background=dark
colorscheme solarized8

"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  set background=dark
"  colorscheme zenburn
"endif

" Put these lines at the very end of your vimrc file.

" --- Enable Linting ---
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL

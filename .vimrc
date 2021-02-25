" It seems that Vimrc needs " to comment out lines

" Determines filetype for indenting 
filetype indent plugin on

" Syntax Highlighting 
syntax on


" Highlight searches 
set hlsearch

" Case Insensitive search 
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Keep Indent as Current Line 
set autoindent

" Stop some movements from going to first character of line
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display status line 
set laststatus=2

" Ask to save changes 
set confirm

" Enable Mouse for All Modes 
set mouse=a

" Display Line Nunbers 
set number

" Time out on keycodes, but not on mappings 
set notimeout ttimeout ttimeoutlen=200

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

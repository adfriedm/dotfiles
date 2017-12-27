syntax enable
" colorscheme srcery-drk
colorscheme eldar
"colorscheme new-railscasts
" SPACING
"filetype plugin indent on
set tabstop=4 " number of visual spaces per TAB
set shiftwidth=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
"
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_collect_identifiers_from_tags_files=1
set completeopt-=preview
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_seed_identifiers_with_syntax=1

"Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1
call vundle#end()
filetype plugin indent on " file type indent files e.g., in ~/.vim/.indent/python.vim
" UI CONFIG
set number " show line numbers
set numberwidth=5

set showcmd " show command in bottom bar
set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set wildmode=list:longest,full
set ruler
set showcmd
set lazyredraw " only redraw screen when necessary
set showmatch " show matching parentheses/brackets
set laststatus=2 " always display the status line
set nostartofline " do not jump to the beginning of the next line

" Make it obvious where 100 characters is
set textwidth=100
set formatoptions=cq
" set formatoptions=qrn1
set wrapmargin=0
"set colorcolumn=+1

set pastetoggle=<F10>


set scrolloff=8
set sidescrolloff=15
set sidescroll=1


" SEARCHING
set incsearch " search as characters are entered
set hlsearch " highlight matches\


" FOLDING
" set foldenable " enable folding
" set foldlevel=1 " close all folds when opening files
" set foldnestmax=10 " 10 nested fold max
" spacebar open/close folds
nnoremap <space> za 
" set foldmethod=indent "fold based on indent level
" highlight last inserted text
nnoremap gV `[v`]


" SHORTCUTS
" jk is escape
inoremap jk <esc>
" Map Y to act like D, yank until end of line
map Y y$


" TMUX
" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" CUSTOM COMMANDS
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
" call ToggleNumber with ctrl+n
nnoremap <C-n> :call ToggleNumber()<cr>


" BREAK HABITS!!!
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" For include suggestions
"set path=.,/usr/include,,
let &path.="/usr/include/"
if isdirectory('/usr/include/c++/5.4.0')
"	set path+=/usr/include/c++/4.6
" elseif
endif

source ~/.vim/plugin/cscope_maps.vim


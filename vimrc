"
"  VIM CONFIGURATION FILE
"
"  Jostein Berre Eliassen
"

set nocompatible    " not care about vi compat
set t_Co=256        " force 256 colors
"set hidden         " allow hiding unsaved files

set nobackup        " no backup files
set nowritebackup   " only in case you don't want a backup file while editing
set noswapfile      " no swap files

set ruler           " always show cursor position
set showmode        " display curent mode
set showcmd         " display incomplete commands
"set nu              " show line numbers

source ~/.vim/plugins.vim       " Plugin list
source ~/.vim/platform.vim      " platform-specific config
source ~/.vim/functions.vim     " User functions
source ~/.vim/autocommands.vim  " per file type settings
source ~/.vim/mappings.vim      " custom key mappings
source ~/.vim/tool_config.vim   " tool-specific config


" APPEARANCE
syntax enable
colorscheme blue

" DEFAULT TAB STOPS & INDENTING
"set tabstop=4                   " tab stops
"set softtabstop=2
"set shiftwidth=2                " number of spaces to use for each step of (auto)indent
set shiftround                  " Round indents to multiples of shiftwidth
set autoindent
set smartindent
set expandtab
set smarttab

" ERGONOMICS
set backspace=indent,eol,start  " liberal backspacing in insert mode
set showmatch                   " show matching brackets when hovering

set history=50
set smartcase
set ttyfast                     " smoother output, they claim

" SEARCH
set ignorecase
set incsearch
set nohlsearch
hi Search ctermbg=White ctermfg=Black

" TECHNICAL
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" Visual warnings for unsafe characters
set list
set listchars=tab:▸·,trail:·,nbsp:●

" uncomment in case of nazi takeover:
highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\| \+\ze\t/

" My additions -- DVS
set guicursor+=a:blinkon0
set nowrap
set keymap=russian-jcuken
set encoding=utf-8
set fileencodings=ucs-bom,utf-8
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set tabstop=8 shiftwidth=4 softtabstop=4 expandtab
set tabpagemax=50

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

set mousehide
set visualbell
" ?:
set complete=.,w,b,u,t

inoremap <F5> ^R"
inoremap <S-Insert> ^R"

au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.rules set syntax=snakemake
au BufNewFile,BufRead *.snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake

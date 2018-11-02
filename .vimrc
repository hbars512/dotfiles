" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Usar mouse en vim
if has('mouse')
   set mouse=a
endif

" Guardar la posicion del cursor
augroup resCur
   autocmd!
   autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Tabulacion de 3 caracteres
set ts=3

" Indentado de 3 caracteres
set sw=3

" Cambia los tabs por espacios
set expandtab

" Indentado Automatico
set smartindent

" Numerado de lineas
set number

" Para todos los archivos de texto coloca 78 caracteres como maximo en una
" linea.
autocmd FileType text setlocal textwidth=78

" Crea backup

" Activar vista de list
set list

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Invisible character colors
highlight NonText ctermfg=DarkGray
highlight SpecialKey ctermfg=DarkGray

" Crea backup
if has("vms")
   set nobackup
else
   set backup
   set undofile
endif

set history=1000
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

" Inicia automaticamente NerdTree...
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Coloreado de sintaxis
syntax on

" Numerador de lineas
set number

" Resalta la (0) que estamos cerrando
set sm

" Mostrar la posicion del cursor en todo momento
set ruler

" Ignora si la palabra esta en mayuscula o minuscula en busqueda.
set ignorecase

" Busca la palabra a medida que la tecleamos
set incsearch

" Resalta las palabras encontradas
set hlsearch

" Todo lo que copiemos en el registro se copiara tambien en el portapapeles
set clipboard=unnamed

" Para guardar los cambios y compilar automaticamente con <F5>
map <F9> \rc
map <F10> :sh<CR>
map <F11> \rr

" Mapeo para NERDTree
map <C-n> :NERDTreeToggle<CR>

" Desactivar touchpad
" sudo modprobe -r psmouse
"map <C-k> :!touchpad-off.sh<CR>

" Correr un scrip Python3 en un panel horizontal de Tmux.
map <C-k> :VimuxRunCommand("python3 

" Activar touchpad
" sudo modprobe psmouse
map <C-i> :!touchpad-on.sh<CR>

" Mapeo para los Tabs
map ,t :tabnew<CR>
map ,3 :tabprevious<CR>
map ,4 :tabnext<CR>
map ,f :tabfind 
map ,n :tabnew<CR>
map ,7 ]s
map ,8 [s
map ,; z=
map ,m :setlocal spell spelllang=en_us
map ,1 :VimuxRunCommand("Python3 

" Shortcut to rapidly toogle `set list`
nmap <leader>l :set list!<CR>

" Uso de g++ para compilar con make
set makeprg=g++

" Esquema de colores
colorscheme koehler

" Vundle para administrar plugins
   set nocompatible     " be iMproved, required
   filetype off         " required

   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   
   " let Vundle manage Vundle, required
   Plugin 'VundleVim/Vundle.vim'

   " plugin on GitHub repo
   Plugin 'tpope/vim-fugitive'
   " plugin form http://vim-scripts.org/vim/scripts.html
   "Plugin 'L9'
   " git plugin not hosted on GitHub
   "Plugin 'git://git.wincent.com/command-t.git'
   " git repos on your local machine (i.e. when working on your own plugin)
   "Plugin 'file:///home/gmarik/path/to/plugin'
   " The sparkup vim scripts is in a subdirectory of this repo called vim..
   " Pass the path to set the runtimepath properly.
   Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
   " Install L9 and avoid a Naming conflict if you've already installed a
   " different version somewhere else.
   Plugin 'ascenator/L9', {'name': 'newL9'}

   " All of your Plugins must be added before the following line
   " Cvim para programacion
   Plugin 'WolfgangMehner/vim-plugins'
   " NERDTree
   Plugin 'scrooloose/nerdtree'
   " Snipmates
   Plugin 'MarcWeber/vim-addon-mw-utils'
   Plugin 'tomtom/tlib_vim'
   Plugin 'garbas/vim-snipmate'
      " Optional
      Plugin 'honza/vim-snippets'

   " Plugin para previsualizar salida pdf de LaTeX
   Plugin 'xuhdev/vim-latex-live-preview'

   " Plugin Vimux
   Plugin 'benmills/vimux'

   " vim-ruby
   " Plugin 'vim-ruby/vim-ruby'
   Plugin 'bling/vim-airline'
   " Para buen funcionamiento de los separadores se instala fonts
   Plugin 'powerline/fonts'
   " Luego se configura los separadores..
   let g:airline_powerline_fonts=1
   let g:airline_powerline_fonts=1
   if !exists('g:airline_symbols')
      let g:airline_symbols={}
   endif
   " Simbolos Unicode
   let g:airline_symbols.linenr = '¶'
   let g:airline_symbols.paste = 'ρ'
   let g:airline_symbols.whitespace = 'Ξ'

   " let g:airline_left_sep='>>'
   " let g:airline_left_sep = '▶'
   " let g:airline_right_sep = '«'
   " let g:airline_right_sep = '◀'
   " let g:airline_symbols.linenr = '␊'
   " let g:airline_symbols.linenr = '␤'
   " let g:airline_symbols.branch = '⎇'
   " let g:airline_symbols.paste = 'Þ'
   " let g:airline_symbols.paste = '∥'

   " airline symbols
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
   
   " let g:airline_left_alt_sep = ''
   " let g:airline_right_alt_sep = ''
   " let g:airline_symbols.linenr = ''
   " Separador utilizado
   "let g:airline_left_sep=''
   "let g:airline_rigth_sep='<<'

   let g:airline_detect_modified=1
   " Smarter linea pestaña para que se muestre siempre
     let g:airline#extensions#tabline#enabled=1
   " Mostrar permanente blin/vim-airline
     set laststatus=2
   " Los temas se seleccionan automaticamente segun el coloscheme. Para eligir
   "  el propio...
   " let g:airline_theme="badwolf"
   " Usar cuando este en tty...
   " let g:airline_theme="solarized"
   " Separacion modificado
   " let g:airline#extensions#tabline#left_sep = ' '
   " let g:airline#extension#tabline#left_alt_sep = '|'

   call vundle#end()             " required
   filetype plugin indent on     " required
   " To ignore plugin indent changes, instead use:
   " filetype plugin on
   "
   " Brief help
   " :PluginList           - lists configured plugins
   " :PluginInstall        - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo     - searches for foo; append `!` to refresh local cache
   " :PluginClean          - confirms removal or unused plugins; append `!` to auto-approve removal
   " see :h vundle for mor details or wiki for FAQ
   " Put your non-Plugin stuff after this line

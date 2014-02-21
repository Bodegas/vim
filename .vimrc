"Carga a configuración básica para sistemas Debian. Está en /usr/share/vim/vimcurrent/debian.vim
runtime! debian.vim



""""" INICIO Configuracion para Python-mode
" Pathogen load
"filetype off
"call pathogen#infect()
"call pathogen#helptags()
"
"filetype plugin indent on
"
"" Following enables syntax highlighting by default.
"if has("syntax")
"  syntax on
"endif
"
"" Para definir a tecla <leader>
"let mapleader = "<"
"
"" Para quitar venta de Preview
"set completeopt-=preview
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"
""""" FIN Configuracion Python-mode


""""" INICIO Configuracion para Modern Python IDE
" Pathogen load
filetype off
call pathogen#incubate()
call pathogen#helptags()

" Following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Para definir a tecla <leader>
let mapleader = "<"

" Para cambiar de ventá sen pulsar control + w + j senón control + w + j
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


" Se non queremos quitar a ventá de preview pero que desapareza cando pulsamos unha opción do autocompletado:
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Para autocompletado
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

""""" Configuracion para Modern Python IDE



"Estes veñen coa configuración por defecto
set showmatch		" Show matching brackets.
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set mouse=c			" Usa o rato como se fora a liña de comandos. Útil para copiar texto doutros programas.

""""" Configuracion para Python-mode fin

" Estes non veñen por defecto
set nu				"mostra o numero de linha
set ruler
set showmode
set laststatus=2		"mosta unha liña de estado permanente abaixo
colorscheme delek
set tabstop=4			"tamnho do tabulador = 3
set expandtab	      "mete espacios en branco en vez de tabuladores
set shiftwidth=4     "Son os espacios que mete cando pulsamos >> ou << e autoindent
set textwidth=0
"set autoindent					"autoindent activado

"Estes son meus:"
"inicio+reg.pag <-- inicio de documento en modo inserción"
map! OH[5~ :1<CR>i

"fin+av.pag. <-- fin de documento en modo modo inserción"
map! OF[6~ :$<CR>i

" inicio+reg.pag<-- inicio de documento en modo comando"
map OH[5~ :1<CR>

"Afin+av.pag <-- fin de documento en modo comando"
map OF[6~ :$<CR>

"Inserta unha retorno de carro en modo comando"
map  i

"Inserta un tabulador en modo comando"
map <TAB> i<TAB>

"Corrixe erro: Cando cortamos en modo comando con c, pasa automaticamente a modo inserción. Esta macro volve a modo comando"
map c c

"Corrixe erro en modo inserción: Cando damos a inicio fai cousas raras. Borra a linha e escribe un H"
map! OH 0i

"Corrixe erro en modo inserción: Cando damo a fin Borra linha e escribe un F"
map! OF $iOC

"Corrixe erro en modo comando: Cando damos a inicio fai cousas raras. Escribe un H, un intro e salta a insertar"
map OH iOH

"Corrixe erro en modo comando: Cando damos a fin fai cousas raras. Escribe un F, un intro e salta a insertar"
map OF iOF



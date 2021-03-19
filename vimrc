"Vim Plugin Install ref.
"ctags : 다양한 프로그래밍 언어로 된 소스와 헤더 파일에서 보이는 이름의 인덱스파일을 생성하는 도구로 소스코드 내에서 함수나 변수가 선언된 곳으로 이동 가능
"cscope : ctags의 부족한 기능을 보충해주는 도구로 변수 및 함수의 정의, 호출된곳, 호풀하는 함수, 문자열 검색 등의 기능을 제공
"NERDTree : Vim을 열어놓은 상태에서 파일 시스템을 탐색하는 기능을 제공
"Taglist : 함수, 전역변수 리스트를 사이드바로 제공하는 ctags 기반의 툴
"SrcExpl : 커서가 가리키는 변수 및 함수에 대한 정의를 보여주는 ctags 기반의 툴
"AutoComplPop : 키워드 자동완성 기능으로 vim 입력 모드에서 Ctrl + P를 통해 자동완성
"Powerline
"vim-multiple-cursors : 여러 문자열 동시 수정
"vim-smooth-scroll : 페이지 이동 부르드럽게
"ctrlp : file search in vim
"ctrlp-py-matcher : ctrlp 가속
"vim-markdown : markdown support

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'The-NERD-Tree'
Plugin 'taglist-plus'
Plugin 'SrcExpl'
Plugin 'AutoComplPop'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'kien/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-simplefold'
Plugin 'Yggdroot/indentLine'
Plugin 'haya14busa/incsearch.vim'
Plugin 'mhinz/vim-signify'
Plugin 'godlygeek/tabular'
Plugin 'inkarkat/vim-ingo-library'
Plugin 'inkarkat/vim-mark'
Plugin 'blueyed/vim-diminactive'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'YankRing.vim'
Plugin 'leafcage/yankround.vim'
Plugin 'sgur/ctrlp-extensions.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo at [http://vim-scripts.org/vim/scripts.html;](http://vim-scripts.org/vim/scripts.html;) append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"basic vim setup
highlight Comment ctermfg=6
set nu
set sm
set smartindent
set ts=4
set sw=4
syntax enable
colorscheme gruvbox
set background=dark
set t_Co=256
set backspace=2
set ignorecase
set incsearch
set hlsearch
let g:gruvbox_contrast_dark="hard"
"set mouse=a
set clipboard=unnamed

" Fold method
"za: toggle
"zo(l) : open a fold
"zc : fold
"zR : unfold all
"zM : fold all
"or simply zf & zo & zi
set foldmethod=manual

" Key Settings
let mapleader = ","
map <F1> v]}zf
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nnoremap <F3> :bp<CR>
nnoremap <F4> :bn<CR>
nnoremap <leader>h :%!xxd<CR>
nnoremap <leader>hh :%!xxd -r<CR>

" Key Setting - resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar

"ctags
"Install: apt-get install ctags
"create: ctags -R
set tags=./tags,../tags,../../tags,../../../tags,../../../../tags

" The-NERD-Tree
" Enter: new window, i: horizontal, s:vertical
autocmd BufEnter * lcd %:p:h
autocmd VimEnter * if !argc() | NERDTree | endif
"nmap <leader>t :NERDTreeToggle<cr>
nmap <F5> :NERDTreeToggle<cr>
let NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = "left"

" taglist-plus'
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1
"nmap <leader>l :Tlist<cr>
nmap <F6> :Tlist<cr>

" SrcExpl
nmap <F7> :SrcExplToggle<cr>
"nmap <C-H> <C-W>h
"nmap <C-J> <C-W>j
"nmap <C-K> <C-W>k
"nmap <C-L> <C-W>l
let g:SrcExpl_winHeight = 13
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0

"cscope
"Install: apt-get install csope
"create:
"rm -rf cscope.files cscope.files
"find $(pwd) \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files
"cscope -i cscope.files
"usage:
":cs find 검색유형 keyword
":help cscope-find
"0 (s) - 키워드를 검색
"1 (g) - 선언 (정의) 되어 있는 부분으로 이동
"2 (d) - 이 함수가 호출 하는 함수 목록 출력
"3 (c) - 이 함수를 호출하는 함수 출력
"4 (t) - 문자열 검색
"5 (e) - 확장 정규식을 사용하여 검색
"7 (f) - 파일 검색 (파일 이름 검색)
"8 (i) - 이 파일을 include 하는 파일을 검색
set csprg=/usr/bin/cscope "cscope 실행 파일 위치
set csto=0   "cscope DB search first
set cst    "cscope DB tag DB search
set nocsverb   "verbose off
if filereadable("./cscope.out")
cs add ./cscope.out
elseif filereadable("../cscope.out")
cs add ../cscope.out
elseif filereadable("../../cscope.out")
cs add ../../cscope.out
elseif filereadable("../../../cscope.out")
cs add ../../../cscope.out
elseif filereadable("../../../../cscope.out")
cs add ../../../../cscope.out
endif
set csverb

"Powerline
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

" vim-multiple-cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<C-b>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" vim-smooth-scroll
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
noremap <silent> <PageUp> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
noremap <silent> <PageDown> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" indentLine
"let g:indentLine_enabled = 0
noremap <TAB> :IndentLinesToggle<CR>
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" vim-signify
set updatetime=100 "default 4000ms
noremap <c-g> :SignifyToggle<CR>
noremap <c-g>d :SignifyDiff<CR>

" tabular
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>

" mark
let g:mwDefaultHighlightingPalette = 'maximum'
let g:mwDefaultHighlightingNum = 10
nmap <Leader>M <Plug>MarkToggle
nmap <Leader>N <Plug>MarkConfirmAllClear
set viminfo^=!

" diminactive
noremap <c-d> :DimInactiveToggle<CR>

" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" customize keymapping
map <c-\> <Leader>c<Space>

" yankround
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
"nmap <C-y>p <Plug>(yankround-prev)
"nmap <C-y>n <Plug>(yankround-next)
nmap <Leader>b <Plug>(yankround-prev)
nmap <Leader>p <Plug>(yankround-next)

" ctrlp-extensions
let g:ctrlp_yankring_disable = 1
noremap <F8> :CtrlPCmdline<cr>

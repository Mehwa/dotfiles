# vi 사용법

### Basic Shortcut

- Command mode
    - Ctrl + F : 이전 입력 명령어 리스트
    - history : 이전 명령어 리스트
- Normal
    - Fold
        - za : toggle
        - zo(l) : open a fold
        - zc : fold
        - zR : unfold all
        - zM : fold all
        - or simply zf & zo & zi
    - mark position
        - m<keyword>: mark position with <keyword> tag
        - `<keyoword>: go to mark with <keyword> tag

## keymap

kemap tutorail

[https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)](https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1))

keymap 보기

- vi 기본 keymap

```
 :help map-which-keys
 :index

```

- 현재 설정된 kemap

```
:verbose map

```

### 일반

- , : leader key
- <F1> : 함수 접기
- <F2> : paste 모드
- <F3> : next buffer
- <F4> : previous buffer
- ,h : hex 보기
- ,hh : 원래대로
- ,= : window 아래로 늘리기 (<shift>=: 많이)
- ,- : window 위로 줄이기 (<shift>-: 많이)
- ,] : window 오른쪽 늘리기 (<shift>]: 많이)
- ,[ : window 왼쪽으로 줄이기 (<shift>[: 많이)

### NerdTree

- F5: NERDTree toggle

### taglist

- F6: Tlist toggle

### SrcExpl

- F7 : SrcExpl toggle

### AutoComplPop

- [insert mode]ctrl + p : 자동 완성

### vim-multiple-cursors

- <PageUp> : up
- <PageDown> : down

### vim-smooth-scroll

- ctrl + n : start word, next word
- ctrl + b : select all word
- ctrl + p : previous word
- ctrl + x : skip
- <ESC> : quit

### ctrlp.vim

- ctrl + f, ctrl + b : 탭 간 이동
- ctrl + j, ctrl + k 또는 방향키 : 파일 목록 이동
- ctrl + t or ctrl + v, ctrl + x : 선택된 파일을 탭 또는 분할 화면으로 열기
- ctrl + r : 정규식 검색 모드로 스위칭
- ctrl + z, ctrl + o : 여러 파일 선택해서 한 번에 열기

### cscope

- **키 설정 필요**

### simplefild

- basic: [commmand mode]:Fold <keyword>

### indentLine

- <TAB> : IndentLineToggle

### vim-signify

- ctrl + g : SignifyToggle
- ctrl + gd : SignifyDiff

### tabular

- basic: [command mode]:Tab /<keyword>
- <Leader>t= : Tab /=
- <Leader>t: : Tab /:

### mark

- basic: <Leader>m, <Leader>n, [command mode]:Marks, [command mode]:MarkSave, [command mode]:MarkLoad
- <Leader>M : MarkToggle
- <Leader>N : MarkConfirmAllClear

### diminactive

- ctrl + d : DimInactiveToggle

### nerdcommenter

- <Leader>cc : NERDCommenterComment
- <Leader>c<space> or ctrl + \ : NERDCommenterToggle
- <Leader>ci : NERDCommenterInvert
- <Leader>cs : NERDCommenterSexy

### yankround

- ,b : yankround-prev
- ,p : yankround-next

### ctrlp-extenstions

- <F8> : CtrlPCmdline

## plugin

VimAwesom: [https://vimawesome.com/](https://vimawesome.com/)

VimCasts: [http://vimcasts.org/](http://vimcasts.org/)

### PluginList

```
"사용 중인 플러그인"

# Utils
"Vundle : 플러그인 관리"
"AutoComplPop : 키워드 자동완성 기능으로 vim 입력 모드에서 Ctrl + P를 통해 자동완성"
"vim-multiple-cursors : 여러 문자열 동시 수정"

"*nerdcommenter : 파일 종류에 따라 자동 주석 입력 [Plugin 'scrooloose/nerdcommenter']"
surround.vim : 문자열 둘러싸기 [Plugin 'surround.vim']
promptline : 쉘 프롬프트 [Plugin 'edkolev/promptline.vim']
visSum.vim : 선택된 문자열에서 모든 숫자를 더한다. [Plugin 'visSum.vim']
YouCompleteMe : 코드 자동 완성 [Plugin 'Valloric/YouCompleteMe']
NrrwRgn : 라인 범위 지정 후 수정 [Plugin 'chrisbra/NrrwRgn']
CtrlSF : 여러파일 동시 수정 [Plugin 'dyng/ctrlsf.vim']
vim-dirdiff : 디렉터리 비교해서 변경된 파일 수정, 비주얼 툴 meld와 함께 사용 [Plugin 'will133/vim-dirdiff']

# history
"*yankround.vim : 복사 문자열 리스트 [Plugin 'LeafCage/yankround.vim']"
*gundo : 수정 되돌리기 트리 [Plugin 'sjl/gundo.vim']

# Visual
"gruvbox : theme"
"airline : 상태 표시 줄 관리"
"Powerline : 상태 표시 줄 관리

"*Mark : [Plugin 'inkarkat/vim-mark']"
"*incsearch : 검색중인 단어 모두 하이라이트 [Plugin 'haya14busa/incsearch.vim']"
"*vim-signify : 파일 버전관리 상태 표시 [Plugin 'mhinz/vim-signify']"
"*indentLine : 들여쓰기 세로 줄 가이드 라인 [Plugin 'Yggdroot/indentLine']"
"*tabular : 라인 정렬 [Plugin 'godlygeek/tabular']"
"*vim-simplefold : 코드 접기 [Plugin 'pangloss/vim-simplefold']"
"vim-markdown : 마크다운 파일 지원 [Plugin 'plasticboy/vim-markdown']"
"Diminactive: 커서 없는 윈도 흐리게 [Plugin 'blueyed/vim-diminactive']"

# search
"NERDTree : Vim을 열어놓은 상태에서 파일 시스템을 탐색하는 기능을 제공"
"Taglist : 함수, 전역변수 리스트를 사이드바로 제공하는 ctags 기반의 툴"
"SrcExpl : 커서가 가리키는 변수 및 함수에 대한 정의를 보여주는 ctags 기반의 툴"
"vim-smooth-scroll : 페이지 이동 부드럽게
"ctrlp : file search in vim
"ctrlp-py-matcher : ctrlp 가속
"ctags : 소스 파일 인덱싱
"cscope : ctags의 부족한 기능을 보충해주는 도구로 변수 및 함수의 정의, 호출된곳, 호풀하는 함수, 문자열 검색

*ag.vim : 문자열 찾기 [Plugin 'rking/ag.vim']
*tagbar : ctags 결과 표시 [Plugin 'majutsushi/tagbar']

#navigate
vim-easymotion : 한 화면에서 커서 이동 [Plugin 'Lokaltog/vim-easymotion']
*Buffergator : 버퍼 이동 [Plugin 'jeetsukumaran/vim-buffergator']
vim-tmux-navigator : tmux에서 vim 윈도우 이동 [Plugin 'christoomey/vim-tmux-navigator']
vim-windowswap : 레이아웃에서 버퍼 위치 swap [Plugin 'wesQ3/vim-windowswonap']
```

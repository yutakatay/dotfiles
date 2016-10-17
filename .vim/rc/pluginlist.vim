
"==============================================================
"          Plugins                                          {{{
"==============================================================

" neocompleteの対応を確認する
function! s:meet_neocomplete_requirements()
  return has('lua') && (v:version > 703 || (v:version == 703
        \ && has('patch885')))
endfunction

if (has('python') || has('python3') || has('ruby') || has('nvim'))
      \ && v:version > 703

if has('vim_starting')
  let s:pluin_manager_dir='~/.vim/plugged/vim-plug'
  execute 'set runtimepath+=' . s:pluin_manager_dir
  if !isdirectory(expand(s:pluin_manager_dir))
    call system('mkdir -p ' . s:pluin_manager_dir)
    call system('git clone https://github.com/junegunn/vim-plug.git '
        \ . s:pluin_manager_dir . '/autoload')
  end
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug',
    \ {'dir': '~/.vim/plugged/vim-plug/autoload'}


"------------------------------------------------------------
" Common

"------------------------------
" Move
Plug 'Lokaltog/vim-easymotion'
Plug 'rhysd/clever-f.vim'
Plug 'osyo-manga/vim-milfeulle'
Plug 'justinmk/vim-ipmotion'
Plug 'vim-scripts/camelcasemotion'
Plug 'rhysd/accelerated-jk'

"------------------------------
" Key Bind
Plug 'tpope/vim-rsi'

"------------------------------
" Window
Plug 't9md/vim-choosewin'
Plug 'blueyed/vim-diminactive'
Plug 'osyo-manga/vim-automatic'

"------------------------------
" Select
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-surround'

"------------------------------
" Search
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'osyo-manga/vim-over'
Plug 'osyo-manga/vim-anzu'
Plug 'osyo-manga/vim-hopping'
Plug 't9md/vim-quickhl'
Plug 'osyo-manga/vim-brightest', {
    \   'on': [ 'BrightestEnable', 'BrightestToggle' ]
    \ }

"------------------------------
" Replace
Plug 'tpope/vim-abolish'

"------------------------------
" Yank
Plug 'LeafCage/yankround.vim'

"------------------------------
" Undo
Plug 'mbbill/undotree'

"------------------------------
" Buffer
"Plug 'jlanzarotta/bufexplorer' " -> can't open split window
Plug 'jeetsukumaran/vim-buffergator'
"Plug 'ap/vim-buftabline' "-> use tab
Plug 'schickling/vim-bufonly'
Plug 'moll/vim-bbye'

"------------------------------
" Hex
Plug 'Shougo/vinarise.vim'

"------------------------------
" Grep tool
Plug 'vim-scripts/grep.vim'

"------------------------------
" Command
Plug 'vim-scripts/sudo.vim'
Plug 'vim-scripts/CmdlineComplete'

"------------------------------
" File
Plug 'Shougo/vimfiler', {
    \   'on': [ 'VimFilerTab', 'VimFiler', 'VimFilerExplorer' ]
    \ }
    "depend 'Shougo/unite.vim'
Plug 'yegappan/mru' " ファイル編集履歴リスト

"------------------------------
" Edit
Plug 'junegunn/vim-easy-align', {
    \   'on': ['EasyAlign'],
    \ }

"------------------------------
" Diff
Plug 'AndrewRadev/linediff.vim'

"------------------------------
" Map
Plug 'kshenoy/vim-signature'

"------------------------------
" Tab
Plug 'kana/vim-tabpagecd'
"Plug 'taohex/lightline-buffer' " -> 今後に期待

"------------------------------
" Man
Plug 'thinca/vim-ref'

"------------------------------
" Font
"Plug 'ryanoasis/vim-devicons' " -> Mojibake

"------------------------------
" Session
Plug 'xolox/vim-session'
  "depend 'xolox/vim-misc'
Plug 'xolox/vim-misc'

"------------------------------
" ColorScheme
Plug 'w0ng/vim-hybrid'
"Plug 'jonathanfilip/vim-lucius'
"Plug 'tomasr/molokai'
"Plug 'nanotech/jellybeans.vim'

"------------------------------
" Statusline
Plug 'itchyny/lightline.vim'

"------------------------------
" Text Object
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-datetime'
Plug 'lucapette/vim-textobj-underscore'
Plug 'sgur/vim-textobj-parameter'
Plug 'mattn/vim-textobj-url'

"------------------------------
" Operator
Plug 'kana/vim-operator-user'
Plug 'kana/vim-operator-replace'
Plug 'emonkak/vim-operator-comment'
Plug 'emonkak/vim-operator-sort'
Plug 'tyru/operator-camelize.vim'
Plug 'rhysd/vim-operator-surround'

"------------------------------
" Extension
Plug 'AndrewRadev/splitjoin.vim'
Plug 'osyo-manga/vim-jplus'
Plug 'myusuf3/numbers.vim'
Plug 'tpope/vim-speeddating'
Plug 'Shougo/echodoc'
Plug 'kana/vim-smartchr'

"------------------------------
" Customize
Plug 'osyo-manga/vim-trip'
Plug 'tpope/vim-repeat'
Plug 'embear/vim-localvimrc'
Plug 'mattn/webapi-vim'

"------------------------------
" Util
Plug 'Shougo/vimproc.vim', {
    \   'do': 'make',
    \ }
Plug 'Shougo/vimshell', {
    \   'on': [ 'VimShellBufferDir' ],
    \ }
    "depend 'Shougo/vimproc.vim'
Plug 'tyru/open-browser.vim'
Plug 'glidenote/memolist.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'tpope/vim-dispatch'
Plug 'FredKSchott/CoVim', {
    \   'on': [ 'CoVim' ]
    \ }

"------------------------------
" etc
Plug 'thinca/vim-scouter', {
    \   'on': [ 'Scouter' ]
    \ }


"------------------------------------------------------------
" FuzzyFinders

"------------------------------
" fzf
Plug 'junegunn/fzf.vim'

"------------------------------
" Unite
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-locate'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neoyank.vim'
Plug 'Shougo/unite-build'
Plug 'thinca/vim-qfreplace'
Plug 'ujihisa/quicklearn'
Plug 'Shougo/unite-outline'
Plug 'tsukkee/unite-tag'
Plug 'tsukkee/unite-help'
Plug 'ujihisa/unite-colorscheme'
Plug 'thinca/vim-unite-history'
Plug 'osyo-manga/unite-quickfix'
Plug 'osyo-manga/unite-quickrun_config'
Plug 'tacroe/unite-mark'
Plug 'amitab/vim-unite-cscope'
Plug 'kmnk/vim-unite-giti'
Plug 'yuku-t/vim-ref-ri'
Plug 'osyo-manga/unite-highlight'

"------------------------------
" CtrlP
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sgur/ctrlp-extensions.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'jasoncodes/ctrlp-modified.vim'


"------------------------------------------------------------
" Coding
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'
Plug 'thinca/vim-quickrun'
Plug 'airblade/vim-rooter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'optroot/auto-pairs'
if has('nvim')
  Plug 'Shougo/deoplete.nvim'
else
  if s:meet_neocomplete_requirements()
    Plug 'Shougo/neocomplete.vim'
  else
    Plug 'Shougo/neocomplcache.vim'
  endif
endif
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/neco-syntax'
Plug 'idanarye/vim-vebugger'
Plug 'kana/vim-altr'
Plug 'vim-scripts/autopreview'
Plug 'Yggdroot/indentLine'
Plug 'Chiel92/vim-autoformat'
Plug 'osyo-manga/shabadou.vim'
Plug 'KazuakiM/vim-qfsigns'
Plug 'dannyob/quickfixstatus'
Plug 'KazuakiM/vim-qfstatusline'
Plug 'cohama/vim-hier'
Plug 'osyo-manga/vim-watchdogs'
  "depend 'Shougo/vimproc.vim'
  "depend 'thinca/vim-quickrun'
  "depend 'osyo-manga/shabadou.vim'
  "depend 'KazuakiM/vim-qfsigns'
  "depend 'dannyob/quickfixstatus'
  "depend 'KazuakiM/vim-qfstatusline'
  "depend 'cohama/vim-hier'
if (v:version == 704 && has('patch786')) || v:version >= 705
  let g:loaded_matchparen = 1 | Plug 'itchyny/vim-parenmatch'
endif

"------------------------------
" Clang
Plug 'justmao945/vim-clang', {
     \   'for': ['c', 'cpp'],
     \ }
Plug 'rhysd/vim-clang-format', {
    \   'for': ['c', 'cpp', 'objc']
    \ }
Plug 'octol/vim-cpp-enhanced-highlight', {
    \   'for': ['c', 'cpp', 'objc']
    \ }
Plug 'osyo-manga/vim-snowdrop', {
     \   'for': ['c', 'cpp'],
     \ }

"------------------------------
" HTML
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'hokaccha/vim-html5validator'
Plug 'elzr/vim-json'

"------------------------------
" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'

"------------------------------
" Javascript
Plug 'pangloss/vim-javascript', {
    \   'for': ['javascript']
    \ }
Plug 'ternjs/tern_for_vim', {
    \   'for': ['javascript']
    \ }
Plug 'kchmck/vim-coffee-script', {
    \   'for': ['coffee']
    \ }
Plug 'leafgarland/typescript-vim', {
    \   'for': ['typescript']
    \ }

"------------------------------
" Python
Plug 'klen/python-mode', {
    \   'for': ['python']
    \ }
Plug 'davidhalter/jedi-vim', {
    \   'for': ['python']
    \ }
Plug 'andviro/flake8-vim', {
    \   'for': ['python']
    \ }
Plug 'hynek/vim-python-pep8-indent', {
    \   'for': ['python']
    \ }

"------------------------------
" Ruby
Plug 'tpope/vim-rails', {
    \   'for': ['ruby']
    \ }
Plug 'thoughtbot/vim-rspec', {
    \   'for': ['ruby']
    \ }
Plug 'tpope/vim-endwise', {
    \   'for': ['ruby']
    \ }

"------------------------------
" PHP
Plug 'violetyk/cake.vim', {
    \   'for': ['php']
    \ }

"------------------------------
" Go
Plug 'fatih/vim-go', {
    \   'for': ['go']
    \ }

"------------------------------
" ansible
Plug 'pearofducks/ansible-vim', {
    \   'for': ['yaml', 'ansible']
    \ }

"------------------------------
" Markdown
Plug 'kannokanno/previm', {
    \   'for': ['markdown']
    \ }
Plug 'gabrielelana/vim-markdown'

"------------------------------
" DB
"Plug 'dbext.vim' " helptagのエラーが出る。とりあえず使わないので無効。

"------------------------------
" Git
Plug 'tpope/vim-fugitive'
Plug 'mattn/gist-vim'
Plug 'airblade/vim-gitgutter'
Plug 'cohama/agit.vim'
Plug 'idanarye/vim-merginal'
Plug 'rhysd/committia.vim'

"------------------------------
" Vimscript
Plug 'mopp/layoutplugin.vim', {
    \   'on': ['LayoutPlugin']
    \ }
" Plug 'vim-jp/vital.vim'


"------------------------------------------------------------
" Load local plugins
if filereadable(expand('~/.vimrc.pluginlist.local'))
  source ~/.vimrc.pluginlist.local
endif


"==============================================================
"          Disable                                          {{{
"==============================================================

"------------------------------
" broken plugins
"Plug 'fidian/hexmode' " -> ;3R display
"" Tag
"Plug 'szw/vim-tags' " -> broken in tmux
"" Fold
"Plug 'Konfekt/FastFold' " -> too slow boot
" unused plugins
"Plug 'miyakogi/conoline.vim' " -> cool highlight current line
" Plug 'plasticboy/vim-markdown', { " -> link paste is wrong
    " \   'for': ['markdown']
    " \ }
  " "depend 'godlygeek/tabular'
" Plug 'godlygeek/tabular'

"------------------------------
" old plugins
" Plug 'osyo-manga/vim-reunions'
" Plug 'osyo-manga/vim-marching', { " -> difficult include path
    " \   'for': ['c', 'cpp']
    " \ }
  " "depend 'Shougo/vimproc.vim'
  " "depend 'osyo-manga/vim-reunions'
"Plug 'troydm/easybuffer.vim' " -> vim-buffergator
"Plug 'jiangmiao/auto-pairs' " -> ignore autopair if next char is not a blank
"Plug 'herry/auto-pairs'
"Plug 'eapache/auto-pairs'
"Plug 'cohama/lexima.vim'
"Plug 'Raimondi/delimitMate' " -> it's many features than 'jiangmiao/auto-pairs'
"Plug 'bkad/CamelCaseMotion' " -> 'vim-scripts/camelcasemotion' '{' wrong motion
"Plug 'junegunn/gv.vim' " -> cohama/agit.vim
"Plug 'fuenor/im_control.vim'  " ibus 制御 -> unused
"Plug 'scrooloose/syntastic' " -> watchdogs
"Plug 'mkitt/tabline' " -> lightline
"Plug 'gcmt/taboo' " -> lightline
"Plug 'bootleq/vim-tabline' " -> lightline
"Plug 'zefei/vim-wintabs' " -> ap/vim-buftabline tabとbufferを分けられて
"                                   素敵だが番号が表示できない
"Plug 'vim-scripts/BufLine' " -> ap/vim-buftabline シンプルでいい
"Plug 'bling/vim-bufferline' " -> ap/vim-buftabline lightlineと組み合わせ
"                                      られる
"Plug 'zefei/vim-wintabs'
"Plug 'terryma/vim-multiple-cursors' " -> strange behavior
"Plug 'xolox/vim-easytags' " -> syntax highlight use tags. can't use.
"Plug 'bbchung/clighter' " -> syntax highlight use libclang.
"                                  can't load libclang.
"Plug 'jeaye/color_coded' " -> syntax highlight use clang. can't build.
"Plug 'MattesGroeger/vim-bookmarks' " -> mark
"Plug 'vim-scripts/EnhancedJumps' " -> occuer error
"Plug 'gregsexton/gitv' " -> cohama/agit.vim
"Plug 'fholgado/minibufexpl.vim' " -> easybuffer
"Plug 'tpope/vim-unimpaired' " -> Raimondi/delimitMate
"Plug 'godlygeek/tabular' " -> junegunn/vim-easy-align
"Plug 'benmills/vimux' " -> move tmux and type command
"Plug 'nathanaelkane/vim-indent-guides' " -> Yggdroot/indentLine
"Plug 'bling/vim-airline' " -> itchyny/lightline.vim
"Plug 'justinmk/vim-sneak' " -> easymotion
"Plug 't9md/vim-smalls' " -> easymotion
"Plug 'taglist.vim' " -> tagbar
"Plug 'wesleyche/SrcExpl' " include many bugs -> autopreview
"Plug 'Trinity' " -> tagbar, nerdtree, autopreview
"Plug 'thinca/vim-openbuf' " -> easybuffer
"Plug 'sjl/gundo.vim' " -> undotree
"Plug 'thinca/vim-localrc' " -> embear/vim-localvimrc
"Plug 'tpope/vim-commentary' " -> The-NERD-Commenter
"Plug 'tomtom/tcomment_vim' " -> The-NERD-Commenter
"Plug 'tyru/caw.vim' " -> The-NERD-Commenter
"Plug 'Rip-Rip/clang_complete' " -> vim-clang
"Plug 'Valloric/YouCompleteMe' " -> vim-clang
"Plug 'L9' " -> dependent on FuzzyFinder
"Plug 'FuzzyFinder' " -> unite
"Plug 'ZenCoding.vim' " -> mattn/emmet-vim
"Plug 'jelera/vim-javascript-syntax'
"Plug 'YankRing.vim' " -> LeafCage/yankround.vim
"Plug 'AutoComplPop' " neocomplcache と競合
"Plug 'ref.vim' " インデックス範囲外のエラーが出る
"Plug 'motemen/hatena-vim'
"Plug 'mattn/unite-advent_calendar'
"Plug 'Townk/vim-autoclose' " 補完時のEscと干渉 -> Raimondi/delimitMate

call plug#end()

else
  echo 'Not load a plugin. Required +python/+python3/+ruby support or nvim'
endif

" }}}


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  let s:toml = '~/.config/nvim/dein-plugins.toml'
  call dein#load_toml(s:toml, {'lazy': 0})

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"let g:python_host_prog=$PYENV_ROOT.'/versions/neovim-2/bin/python'
"let g:python3_host_prog=$PYENV_ROOT.'/versions/neovim-3/bin/python'
let g:python_host_prog = expand('/usr/local/bin/python2')
let g:python3_host_prog = expand('/usr/local/bin/python3')

"color
autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none
set background=dark
colorscheme hybrid

" setting
syntax on
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" 行番号を表示
set number
" 現在の行を強調表示
"set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
"自動インデント
set autoindent
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" インタラクティブ置換
"set inccommand=split


" Window移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 折り返し行移動
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" jjでエスケープ
inoremap <silent> jj <ESC>:<C-u>w<CR>

" 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>


"End key bind-------------------------

"Start Pluginの設定------------------------

autocmd FileType html,css,scss imap <buffer><expr><tab>
    \ emmet#isExpandable() ? "\<plug>(emmet-expand-abbr)" :
    \ "\<tab>"

"End Pluginの設定------------------------
"
"" NERDTree の設定 -------------------------------------------------------------
  " ctrl-n で NERDTree を起動
  nnoremap <silent> <C-n> :NERDTreeToggle<CR>
  " ブックマークを表示
  let g:NERDTreeShowBookmarks=1
  " 親ディレクトリへ移動
  let g:NERDTreeMapUpdir=''
  " ファイルの開き方
  let g:NERDTreeMapOpenSplit='<C-j>'
  let g:NERDTreeMapOpenVSplit='<C-l>'

  " ファイルを開いたらNERDTreeを閉じる
  let g:NERDTreeQuitOnOpen=1

  " 隠しファイルを表示
  let g:NERDTreeShowHidden=1
  
  " 非表示ファイル
  let g:NERDTreeIgnore=['\.git$', '\.clean$', '\.swp$', '\.bak$', '\~$']

  "NERDTreeを同時に閉じる
  autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif





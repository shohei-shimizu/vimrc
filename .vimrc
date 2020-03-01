" 基本設定(一応重要度順)
set number                      " 行番号表示
syntax on                       " シンタックスハイライトを有効化
set hidden                      " バッファ保存しなくてもbn, bpができる
set nowrap                      " 折り返さない
set backspace=indent,eol,start  " バックスペースでワイド文字を消せる
set nobackup                    " バックアップファイル~を作らない
"set noswapfile                 " スワップファイル.swpを作らない(終了時に消える)

set wildmenu wildmode=list:longest,full " ファイルをタブ補完で便利に
set ambiwidth=double                    " ワイド文字

" インデント系
set expandtab       " タブ文字をスペースに

" 幅を4に
set tabstop=4       " ^Iや<Tab>での入力の幅
set shiftwidth=4    " >>や^T, ^Dでの幅

set smartindent     " インデントを自動でする
set smarttab        " 次の行に行った時にインデントが勝手にされる
set shiftround      " インデントが乱れないヤツ(詳細は調べて)

" 検索系
set hlsearch        " 検索語句をハイライト
set wrapscan        " 下まで検索したら上に戻る
set ignorecase      " 大文字小文字を区別しない
set smartcase       " 大文字にしたときだけ区別する
set incsearch       " インタラクティブに検索

" jjと打つとnormalモードに。これ、慣れすぎるとこれのない環境に耐えられない。
" それに、最終的にはタイプ量が増えてしまう。
"inoremap <silent> jj <ESC>

" 折りたたみ
set foldmethod=manual  "折りたたみ範囲の判断基準(デフォルト: manual)(manualのほうが早いらしい)
"set foldlevel=2       "ファイルを開いたときにデフォルトで折りたたむレベル
set foldcolumn=3       "左端に折りたたみ状態を表示する領域を追加する

" * はファイル名。ワイルドカードを使っている。
"autocmd BufWinLeave * mkview          " バッファを閉じるとき、自動で折りたたみ情報を保持
"autocmd BufWinEnter * silent loadview " バッファを開くとき、自動で折りたたみ情報を復元
" これは放っておくとどんどん増えるので、mkviewを覚えておくだけでいい。
" 折り畳み情報のファイルは~/.vim/view/下に保存される。
" この設定はmarkdownの折り畳みがg:markdown_foldingで可能と分かって必要無くなったのでまるっとカット。

" helpを日本語に(vimdoc-jaを入れる必要があります)
set helplang=ja,en

" remaps
" ^Bで左に一つ移動できるようにする
inoremap <C-b> <Esc>i

" User-defined commands. It's not functions.
" Generate tags file with ctags.
command! Ctags lcd %:h | term ++close ctags -R

let g:markdown_folding = 1  " markdownで畳み込み

" lightline用の設定(いずれカスタマイズが増えてきたら別ファイルに分離するかも)
set laststatus=2
" -- insert --などが表示されないようにする
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" iTermなどでフルカラーに対応する
" termguicolors用の設定
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme material-theme

" Load the other configuration file for vim. It is in directory that ~/.vim/config/
" If you don't plase it at ~/.vim/config/, you have to make directory that plase and move files there.

" その他の設定のロード
" vim-plug用の設定
source ~/.vim/config/vim-plug-plugin.vim

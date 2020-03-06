" 2回読み込まれない様にするための設定。
if exists('g:loaded_filetype')
  finish
endif
let g:loaded_filetype = 1

" ファイルタイプごとの設定
" autocmd=起動するタイミング指定, BufNewFile,BufRead=読み込み時, *.txt=拡張子指定, setlocal=このバッファでのみ有効
"autocmd BufNewFile,BufRead *.txt    setlocal wrap               " .txtファイルは折り返す

" Filetypeと書く場合の形式
" 複数ファイルを指定する場合、カンマの隣にスペースを開けてはいけないので注意。
"autocmd Filetype text,markdown  setlocal wrap                               " .md .txtファイルは折り返す
"autocmd Filetype c,cpp          setlocal foldmethod=syntax | set cindent    " .cファイルは構文で折りたたむ
"autocmd Filetype make           setlocal noexpandtab                        " Makefileはタブ文字でインデント

" これを遅延読み込みに設定すると、その拡張子のファイルを開いた時点でこれが読み込まれることがなくなってしまうので注意。
autocmd BufNewFile,BufRead *.txt,*.md setlocal wrap                                 " .md .txtファイルは折り返す
autocmd BufNewFile,BufRead *.c,*.cpp  setlocal foldmethod=syntax | setlocal cindent " .cファイルは構文で折りたたむ
autocmd BufNewFile,BufRead Makefile   setlocal noexpandtab                          " Makefileはタブ文字でインデント

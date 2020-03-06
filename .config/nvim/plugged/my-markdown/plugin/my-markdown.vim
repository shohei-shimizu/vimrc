" 2回読み込まれない様にするための設定。
if exists('g:loaded_my_markdown')
  finish
endif
let g:loaded_my_markdown = 1

" Fold markdown.
command! Foldmd set foldmethod=expr foldexpr=my_markdown#fold_markdown(v:lnum)

let g:markdown_fenced_languages = [ 'html', 'python', 'bash=sh', 'ruby' ]

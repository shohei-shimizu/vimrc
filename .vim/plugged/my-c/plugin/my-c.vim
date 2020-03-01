" 2回読み込まれない様にするための設定。
if exists('g:loaded_my_c')
  finish
endif
let g:loaded_my_c = 1

command! PutCppTemplete call my_c#put_cpp_templete()
command! PutCTemplete   call my_c#put_c_templete()

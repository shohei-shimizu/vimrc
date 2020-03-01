" Insert templete for C++.
function! my_c#put_cpp_templete()
    " Implicitly defined as local. But I assigned a identifier for easy reading.
    let l:list = [
                \ "#include <iostream>"               ,
                \ ""                                  ,
                \ "int main(int argc, char **argv) {" ,
                \ "    // write here"                 ,
                \ "    return 0;"                     ,
                \ "}" ]

    " 一旦qレジスタをtmpに保管する。@aというとマクロを実行するときのアレだが、
    " というのも、マクロというのは実際レジスタに文字列を格納しているだけらしい。
    " それを@aとすれば実行されるし、"apとすれば貼り付けられるということのようだ。
    let l:tmp = @a
    let @a = join(l:list, "\n")
    execute 'normal "ap'

    " Return to register.
    let @a = l:tmp
endfunction

" Insert templete for C.
function! my_c#put_c_templete()
    " Implicitly defined as local. But I assigned a identifier for easy reading.
    let l:list = [
                \ "#include <stdio.h>"                ,
                \ ""                                  ,
                \ "int main(int argc, char **argv) {" ,
                \ "    // write here"                 ,
                \ "    return 0;"                     ,
                \ "}" ]

    " 一旦qレジスタをtmpに保管する。@aというとマクロを実行するときのアレだが、
    " というのも、マクロというのは実際レジスタに文字列を格納しているだけらしい。
    " それを@aとすれば実行されるし、"apとすれば貼り付けられるということのようだ。
    let l:tmp = @a
    " 改行区切りで配列を連結する。
    let @a = join(l:list, "\n")
    execute 'normal "ap'

    " Return to register.
    let @a = l:tmp
endfunction

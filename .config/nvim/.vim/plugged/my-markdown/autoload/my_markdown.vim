" This is copy & paste. I don't know this mean of function.
" ハイフンを含めてしまうと認識されないので注意。
function! my_markdown#fold_markdown(lnum)
    let line = getline(a:lnum)
    let next = getline(a:lnum + 1)
 
    " 正規表現らしいということは分かる。
    if line =~ '^#\{1}[^#]\+'
        return 1
    elseif next =~ '^#\{1}[^#]\+'
        return '<1'
    elseif line =~ '^#\{2}[^#]\+'
        return 2
    elseif next =~ '^#\{2}[^#]\+'
        return '<2'
    elseif line =~ '^#\{3}[^#]\+'
        return 3
    elseif next =~ '^#\{3}[^#]\+'
        return '<3'
    endif
 
    return '='
endfunction

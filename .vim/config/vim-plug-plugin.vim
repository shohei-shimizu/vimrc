" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" fzf is fuzzy search tool. You can use fzf by typing :FZF in command-line mode.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all', 'on': 'FZF' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
Plug '~/.vim/plugged/filetype/'
Plug '~/.vim/plugged/my-c/', { 'for': [ 'c', 'cpp' ] }
Plug '~/.vim/plugged/my-markdown/', { 'for': 'markdown' }

" Code to execute when the plugin is lazily loaded on demand
" Goyo is plugin that it makes margin for your display. it reject noises.
Plug 'junegunn/goyo.vim', { 'for': [ 'markdown', 'text' ] }
"autocmd! User goyo.vim echom 'Goyo is now loaded!'

" Japanese help page.
Plug 'vim-jp/vimdoc-ja'

" Generate cool status line.
Plug 'itchyny/lightline.vim'

" SKK in vim.
Plug 'tyru/eskk.vim'

" Initialize plugin system
call plug#end()

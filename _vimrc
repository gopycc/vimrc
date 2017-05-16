""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""" VIM Configuration """"""""""""""""""""""""""""
"""""""""""""""""""" https://github.com/lang4net/vimrc """""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin		"设置鼠标运行模式为WINDOWS模式

""""""""""""""""""""""""""User Settings"""""""""""""""""""""""""""""""""""
set nocompatible        " 关闭vim兼容模式
set wildmenu            " vim自身命令行模式智能补全
set incsearch
set cmdheight=2         " 设置命令行的高度
set history=100         "设置命令历史行数
set ignorecase          " 搜索忽略大小写
set laststatus=2        " 总是显示状态栏
set ruler               " 显示光标当前位置
set number              " 开启行号显示
set hlsearch            " 高亮显示搜索结果
set nowrap              " 禁止折行
set expandtab           " 用空格代替tab
set tabstop=4           " 设置编辑时制表符占用空格数
set shiftwidth=4        " 设置格式化时制表符占用空格数
set softtabstop=4       " 让 vim 把连续数量的空格视为一个制表符
set background=dark
set ambiwidth=double            "显示中文引号
set shortmess=atI               "启动的时候不显示那个援助索马里儿童的提示
"set novisualbell               "不要闪烁
set nocp                        "去掉有关vi一致性模式，避免以前版本的一些bug和局限
set list                        "显示TAB健
set listchars=tab:>-,trail:-    "显示TAB健
set nobackup                    "缺省不产生备份文件
set showmatch                   "在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set formatoptions+=mM           "正确地处理中文字符的折行和拼接
set bsdir=buffer                "设定文件浏览器目录为当前目录
set autochdir                   "自动切换当前目录为当前文件所在的目录
"set autoread                   "自动重新加载外部修改内容
"set hidden                      "允许在有未保存的修改时切换缓冲区
set fileformats=dos,unix        "保存文件的格式顺序
set helplang=cn                 "设置帮助信息

"选中一段文字并全文搜索这段文字
vmap <silent> ,/ y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vmap <silent> ,? y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

"进入当前编辑的文件的目录
"autocmd BufEnter * exec "cd %:p:h"

"设置路径,多个路径用逗号分隔
"set path=.,"f:\tools\vim",,

"高亮字符，让其不受100列限制
":highlight OverLength ctermbg=red ctermfg=white guibg=grey guifg=white
":match OverLength '\%101v.*'

"设置 Backspace 和 Delete 的灵活程度，backspace=2 则没有任何限制
"设置在哪些模式下使用鼠标功能，mouse=a 表示所有模式
set mouse=a
set backspace=2       
"设置超过100字符自动换行
"set textwidth=100
"设置超过100列的字符带下划线
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>100v.\+', -1)
"syn match out80 /\%80v./ containedin=ALL
"hi out80 guifg=white guibg=red

set autoindent                  "自动缩进
set smartindent                 "智能对齐方式
set ai!                         "设置自动缩进
set cindent shiftwidth=4        "缩进的字符个数
"set autoindent shiftwidth=2    "缩进的字符个数

" 高亮显示当前行和列
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" 应用配色(更多配色见colors目录)
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

"启动后最大化
au GUIEnter * simalt ~x


"自动保存session和viminfo
"缺省的sessionoptions选项包括：blank,buffers,curdir,folds,help,options,tabpages,winsize
"也就是会话文件会恢复当前编辑环境的空窗口、所有的缓冲区、当前目录、折叠(fold)相关的信息、帮助窗口、所有的选项和映射、所有的标签页(tab)、窗口大小
"set sessionoptions-=curdir
"au VimLeave * mksession! $VIMRUNTIME/Session.vim
"au VimLeave * wviminfo! $VIMRUNTIME/_viminfo
"source $VIMRUNTIME/Session.vim
"rviminfo $VIMRUNTIME/_viminfo

"记录上次关闭的文件及状态
set viminfo='10,\"100,:20,%,n$VIMRUNTIME/_viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"快速查找（插件grep插件，需要grep软件）
"nnoremap <silent> <F3> :Grep<CR>
"给n映射一个快捷键，习惯上喜欢用F3
nmap <F3> n
"给n映射一个快捷键，习惯上喜欢用F3
nmap <S-F3> N

""""""""""""""""""""""""""Vundle Setting""""""""""""""""""""""""""""""""""
filetype off                                " required
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/   " required
call vundle#begin('$VIM/vimfiles/bundle/')  " required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tmhedberg/SimpylFold'
Plugin 'fatih/vim-go'
Plugin 'benmills/vimux'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'tomasr/molokai'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'derekwyatt/vim-fswitch'
"Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'sjl/gundo.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'WolfgangMehner/vim-plugins'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'c.vim'
call vundle#end()                           " required
filetype plugin indent on                   " required
filetype plugin on
""""""""""""""""""""""""""""Vundle END""""""""""""""""""""""""""""""""""""

syntax enable           " 开启语法高亮功能
syntax on               " 允许用指定语法高亮配色方案替换默认方案

filetype on             " 开启文件类型侦测
filetype plugin on      " 根据侦测到的不同类型加载对应的插件
filetype indent on      " 自适应不同语言的智能缩进


"""""""""""""""""""""设置VIM状态栏"""""""""""""""""""""""
set laststatus=2 "显示状态栏(默认值为1, 无法显示状态栏)
set statusline=
set statusline+=%2*%-3.3n%0*\ " buffer number
set statusline+=%f\ " file name
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=[
if v:version >= 600
    set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
    set statusline+=%{&fileencoding}, " encoding
endif
set statusline+=%{&fileformat}] " file format
set statusline+=%= " right align
"set statusline+=%2*0x%-8B\ " current char
set statusline+=0x%-8B\ " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
    set statusline+=\ %{VimBuddy()} " vim buddy
endif
"状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White


" 设置状态栏主题风格
"let g:Powerline_colorscheme='molokai'

" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 随vim自启动
"let g:indent_guides_enable_on_vim_startup=1

" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2   
let g:indent_guides_guide_size=1    " 色块宽度
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"""""""""""""""""""""""代码折叠""""""""""""""""""""""""""
"设置折叠模式
set foldcolumn=4
"光标遇到折叠，折叠就打开
"set foldopen=all
"移开折叠时自动关闭折叠
"set foldclose=all
"zf zo zc zd zr zm zR zM zn zi zN
"依缩进折叠
"   manual  手工定义折叠
"   indent  更多的缩进表示更高级别的折叠
"   expr    用表达式来定义折叠
"   syntax  用语法高亮来定义折叠
"   diff    对没有更改的文本进行折叠
"   marker  对文中的标志折叠
set foldmethod=syntax
"启动时不要自动折叠代码
set foldlevel=100
"依标记折叠
"set foldmethod=marker

"set nofoldenable                    " 启动vim时关闭折叠代码
"au BufWinLeave * silent mkview      " 保存文件的折叠状态
"au BufRead * silent loadview        " 恢复文件的折叠状态
nnoremap <space> za                 " 用空格来切换折叠状态
"""""""""""""""""""""""折叠 END""""""""""""""""""""""""""

" 剪切板拷贝时切换到拷贝模式防止自动缩进和补全
set pastetoggle=<F9>


""""""""""""""""""""""""""""""YCM 补全菜单配色"""""""""""""""""""""""""""
" 菜单
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
"let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
"let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
"let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
"set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
"inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
"set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
"let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
"let g:ycm_cache_omnifunc=0
" 语法关键字补全         
"let g:ycm_seed_identifiers_with_syntax=1

""""""""""""""""""""""""""""""""""NREDTree Settings"""""""""""""""""""""""
" 使用 NERDTree 插件查看工程文
"nmap <Leader>nt :NERDTreeToggle<CR>
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=31
" 设置 NERDTree 子窗口位置
let NERDTreeWinPos="right"
"显示行号
let NERDTreeShowLineNumber=1
" 显示隐藏文件
"let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=0
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 忽略下面类型的文件
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
" Ctrl+N 打开/关闭
map <C-n> :NERDTreeToggle<CR>
" 当不带参数打开Vim时自动加载项目树
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 当所有文件关闭时关闭项目树窗格
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"F7单独切换打开nerd_tree（nerd_tree插件）
let g:NERDChristmasTree = 1              "色彩显示
"let g:NERDTreeShowHidden = 1             "显示隐藏文件
"let g:NERDTreeWinPos = 'left'            "窗口显示位置
let g:NERDTreeHighlightCursorline = 0    "高亮当前行
nmap <F3> :NERDTreeMirror<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F12> :NERDTreeFind<CR>

""""""""""""""""vim-nerdtree-tabs settings"""""""""""""
"终端运行vim时打开NERDTree窗口
"let g:nerdtree_tabs_open_on_console_startup=1

""""""""""""""""""""""""""""""""CtrlP Settings""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"disable the plugin completely
"let g:loaded_ctrlp =1

"CtrlP sets its local working directory according to this variable
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}


""""""""""""""""""""""""""""""Powerline Settings"""""""""""""""""""""""""""
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8

""""""""""""""""""""""""""""""NERDCommenter Settings""""""""""""""""""""""
let mapleader=';'

""""""""""""""""""""""""""""""Tagbar Settings"""""""""""""""""""""""""""""
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键
nnoremap <Leader>tb :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=31 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }
"""""""""""""""""""""""""""""Tagbar END""""""""""""""""""""""""""""""""

let g:C_FormatDate='%Y/%m/%d'
let g:C_FormatTime='%H:%M:%S'


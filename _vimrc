""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""" VIM Configuration """"""""""""""""""""""""""""
"""""""""""""""""""" https://github.com/lang4net/vimrc """""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin		"�����������ģʽΪWINDOWSģʽ

""""""""""""""""""""""""""User Settings"""""""""""""""""""""""""""""""""""
set nocompatible        " �ر�vim����ģʽ
set wildmenu            " vim����������ģʽ���ܲ�ȫ
set incsearch
set cmdheight=2         " ���������еĸ߶�
set history=100         "����������ʷ����
set ignorecase          " �������Դ�Сд
set laststatus=2        " ������ʾ״̬��
set ruler               " ��ʾ��굱ǰλ��
set number              " �����к���ʾ
set hlsearch            " ������ʾ�������
set nowrap              " ��ֹ����
set expandtab           " �ÿո����tab
set tabstop=4           " ���ñ༭ʱ�Ʊ��ռ�ÿո���
set shiftwidth=4        " ���ø�ʽ��ʱ�Ʊ��ռ�ÿո���
set softtabstop=4       " �� vim �����������Ŀո���Ϊһ���Ʊ��
set background=dark
set ambiwidth=double            "��ʾ��������
set shortmess=atI               "������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ
"set novisualbell               "��Ҫ��˸
set nocp                        "ȥ���й�viһ����ģʽ��������ǰ�汾��һЩbug�;���
set list                        "��ʾTAB��
set listchars=tab:>-,trail:-    "��ʾTAB��
set nobackup                    "ȱʡ�����������ļ�
set showmatch                   "����������ʱ������ݵ�������֮��ƥ������Ŵ�����Ӱ������
set formatoptions+=mM           "��ȷ�ش��������ַ������к�ƴ��
set bsdir=buffer                "�趨�ļ������Ŀ¼Ϊ��ǰĿ¼
set autochdir                   "�Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
"set autoread                   "�Զ����¼����ⲿ�޸�����
"set hidden                      "��������δ������޸�ʱ�л�������
set fileformats=dos,unix        "�����ļ��ĸ�ʽ˳��
set helplang=cn                 "���ð�����Ϣ

"ѡ��һ�����ֲ�ȫ�������������
vmap <silent> ,/ y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
vmap <silent> ,? y?<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>

"���뵱ǰ�༭���ļ���Ŀ¼
"autocmd BufEnter * exec "cd %:p:h"

"����·��,���·���ö��ŷָ�
"set path=.,"f:\tools\vim",,

"�����ַ������䲻��100������
":highlight OverLength ctermbg=red ctermfg=white guibg=grey guifg=white
":match OverLength '\%101v.*'

"���� Backspace �� Delete �����̶ȣ�backspace=2 ��û���κ�����
"��������Щģʽ��ʹ����깦�ܣ�mouse=a ��ʾ����ģʽ
set mouse=a
set backspace=2       
"���ó���100�ַ��Զ�����
"set textwidth=100
"���ó���100�е��ַ����»���
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>100v.\+', -1)
"syn match out80 /\%80v./ containedin=ALL
"hi out80 guifg=white guibg=red

set autoindent                  "�Զ�����
set smartindent                 "���ܶ��뷽ʽ
set ai!                         "�����Զ�����
set cindent shiftwidth=4        "�������ַ�����
"set autoindent shiftwidth=2    "�������ַ�����

" ������ʾ��ǰ�к���
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Ӧ����ɫ(������ɫ��colorsĿ¼)
colorscheme molokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

"���������
au GUIEnter * simalt ~x


"�Զ�����session��viminfo
"ȱʡ��sessionoptionsѡ�������blank,buffers,curdir,folds,help,options,tabpages,winsize
"Ҳ���ǻỰ�ļ���ָ���ǰ�༭�����Ŀմ��ڡ����еĻ���������ǰĿ¼���۵�(fold)��ص���Ϣ���������ڡ����е�ѡ���ӳ�䡢���еı�ǩҳ(tab)�����ڴ�С
"set sessionoptions-=curdir
"au VimLeave * mksession! $VIMRUNTIME/Session.vim
"au VimLeave * wviminfo! $VIMRUNTIME/_viminfo
"source $VIMRUNTIME/Session.vim
"rviminfo $VIMRUNTIME/_viminfo

"��¼�ϴιرյ��ļ���״̬
set viminfo='10,\"100,:20,%,n$VIMRUNTIME/_viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"���ٲ��ң����grep�������Ҫgrep�����
"nnoremap <silent> <F3> :Grep<CR>
"��nӳ��һ����ݼ���ϰ����ϲ����F3
nmap <F3> n
"��nӳ��һ����ݼ���ϰ����ϲ����F3
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

syntax enable           " �����﷨��������
syntax on               " ������ָ���﷨������ɫ�����滻Ĭ�Ϸ���

filetype on             " �����ļ��������
filetype plugin on      " ������⵽�Ĳ�ͬ���ͼ��ض�Ӧ�Ĳ��
filetype indent on      " ����Ӧ��ͬ���Ե���������


"""""""""""""""""""""����VIM״̬��"""""""""""""""""""""""
set laststatus=2 "��ʾ״̬��(Ĭ��ֵΪ1, �޷���ʾ״̬��)
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
"״̬����ɫ
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White


" ����״̬��������
"let g:Powerline_colorscheme='molokai'

" �����ñ��������Ч
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ��vim������
"let g:indent_guides_enable_on_vim_startup=1

" �ӵڶ��㿪ʼ���ӻ���ʾ����
let g:indent_guides_start_level=2   
let g:indent_guides_guide_size=1    " ɫ����
" ��ݼ� i ��/���������ӻ�
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"""""""""""""""""""""""�����۵�""""""""""""""""""""""""""
"�����۵�ģʽ
set foldcolumn=4
"��������۵����۵��ʹ�
"set foldopen=all
"�ƿ��۵�ʱ�Զ��ر��۵�
"set foldclose=all
"zf zo zc zd zr zm zR zM zn zi zN
"�������۵�
"   manual  �ֹ������۵�
"   indent  �����������ʾ���߼�����۵�
"   expr    �ñ��ʽ�������۵�
"   syntax  ���﷨�����������۵�
"   diff    ��û�и��ĵ��ı������۵�
"   marker  �����еı�־�۵�
set foldmethod=syntax
"����ʱ��Ҫ�Զ��۵�����
set foldlevel=100
"������۵�
"set foldmethod=marker

"set nofoldenable                    " ����vimʱ�ر��۵�����
"au BufWinLeave * silent mkview      " �����ļ����۵�״̬
"au BufRead * silent loadview        " �ָ��ļ����۵�״̬
nnoremap <space> za                 " �ÿո����л��۵�״̬
"""""""""""""""""""""""�۵� END""""""""""""""""""""""""""

" ���а忽��ʱ�л�������ģʽ��ֹ�Զ������Ͳ�ȫ
set pastetoggle=<F9>


""""""""""""""""""""""""""""""YCM ��ȫ�˵���ɫ"""""""""""""""""""""""""""
" �˵�
"highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" ѡ����
"highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" ��ȫ������ע����ͬ����Ч
"let g:ycm_complete_in_comments=1
" ���� vim ���� .ycm_extra_conf.py �ļ���������ʾ
"let g:ycm_confirm_extra_conf=0
" ���� YCM ��ǩ��ȫ����
"let g:ycm_collect_identifiers_from_tags_files=1
" ���� C++ ��׼��tags
"set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM ���� OmniCppComplete ��ȫ���棬�������ݼ�
"inoremap <leader>; <C-x><C-o>
" ��ȫ���ݲ��Էָ��Ӵ�����ʽ���֣�ֻ��ʾ��ȫ�б�
"set completeopt-=preview
" �ӵ�һ�������ַ��Ϳ�ʼ����ƥ����
"let g:ycm_min_num_of_chars_for_completion=1
" ��ֹ����ƥ���ÿ�ζ���������ƥ����
"let g:ycm_cache_omnifunc=0
" �﷨�ؼ��ֲ�ȫ         
"let g:ycm_seed_identifiers_with_syntax=1

""""""""""""""""""""""""""""""""""NREDTree Settings"""""""""""""""""""""""
" ʹ�� NERDTree ����鿴������
"nmap <Leader>nt :NERDTreeToggle<CR>
" ���� NERDTree �Ӵ��ڿ��
let NERDTreeWinSize=31
" ���� NERDTree �Ӵ���λ��
let NERDTreeWinPos="right"
"��ʾ�к�
let NERDTreeShowLineNumber=1
" ��ʾ�����ļ�
"let NERDTreeShowHidden=1
" NERDTree �Ӵ����в���ʾ���������Ϣ
let NERDTreeMinimalUI=0
" ɾ���ļ�ʱ�Զ�ɾ���ļ���Ӧ buffer
let NERDTreeAutoDeleteBuffer=1
" �����������͵��ļ�
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" ��ʾ��ǩ�б�
let NERDTreeShowBookmarks=1
" Ctrl+N ��/�ر�
map <C-n> :NERDTreeToggle<CR>
" ������������Vimʱ�Զ�������Ŀ��
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" �������ļ��ر�ʱ�ر���Ŀ������
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"F7�����л���nerd_tree��nerd_tree�����
let g:NERDChristmasTree = 1              "ɫ����ʾ
"let g:NERDTreeShowHidden = 1             "��ʾ�����ļ�
"let g:NERDTreeWinPos = 'left'            "������ʾλ��
let g:NERDTreeHighlightCursorline = 0    "������ǰ��
nmap <F3> :NERDTreeMirror<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F12> :NERDTreeFind<CR>

""""""""""""""""vim-nerdtree-tabs settings"""""""""""""
"�ն�����vimʱ��NERDTree����
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
" ���� tagbar �Ӵ��ڵ�λ�ó��������༭������� 
let tagbar_left=1 
" ������ʾ�����ر�ǩ�б��Ӵ��ڵĿ�ݼ�
nnoremap <Leader>tb :TagbarToggle<CR> 
" ���ñ�ǩ�Ӵ��ڵĿ�� 
let tagbar_width=31 
" tagbar �Ӵ����в���ʾ���������Ϣ 
let g:tagbar_compact=1
" ���� ctags ����Щ�����ʶ�����ɱ�ǩ
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


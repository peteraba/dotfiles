"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin definitions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

""""""""""""""""""""""""""""""""""""""""
" Editor improvements
""""""""""""""""""""""""""""""""""""""""

" sensible.vim: Defaults everyone can agree on
"
" See: https://github.com/tpope/vim-sensible
Plug 'tpope/vim-sensible'

" Zoom in/out of windows (toggle between one window and multi-window)
"
" See: https://github.com/itspriddle/ZoomWin
"
" <c-w>o : the current window zooms into a full screen
" <c-w>o again: the previous set of windows is restored
Plug 'itspriddle/ZoomWin'

" kiss local vimrc with hash protection
"
" See: https://github.com/MarcWeber/vim-addon-local-vimrc
Plug 'MarcWeber/vim-addon-local-vimrc'

" See: https://github.com/duff/vim-scratch
"
" :Scratch :Sscratch
Plug 'duff/vim-scratch'

" repeat.vim: enable repeating supported plugin maps with "."
"
" See: https://github.com/tpope/vim-repeat
Plug 'tpope/vim-repeat'

" True Sublime Text style multiple selections for Vim
"
" See: https://github.com/terryma/vim-multiple-cursors
"
" <C-n>     Start multiple cursor session / Search forward for word under cursor
" <C-p>     Go one selection back
" <C-s>     Skip one selection
" <Esc>     Quit multicursor selection
Plug 'terryma/vim-multiple-cursors'

" bufutils.vim provides utilities to Open/Close/Refesh buffers faster
"
" See: https://github.com/smitajit/bufutils.vim
"
" qq    Close previews
" qa    Close all windows
" ql    Close left
" qr    Close right
" qo    Close other
" qt    Close this
Plug 'smitajit/bufutils.vim'

" Dispatch is mostly used by other plugins to run processes in the background
"
" See: https://github.com/tpope/vim-dispatch
Plug 'tpope/vim-dispatch'

" Powerful shell implemented by vim.
"
" vim-delve depends on Shougo/vimshell when used in Vim
"
" See: https://github.com/Shougo/vimshell.vim
Plug 'Shougo/vimshell'

""""""""""""""""""""""""""""""""""""""""
" File and Source Code Management
""""""""""""""""""""""""""""""""""""""""

" Visual Git merge tool
"
" See: https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Vim sugar for the UNIX shell commands that need it the most
"
" See: https://github.com/tpope/vim-eunuch
"
" :Delete: Delete a buffer and the file on disk simultaneously.
" :Unlink: Like :Delete, but keeps the now empty buffer.
" :Move: Rename a buffer and the file on disk simultaneously.
" :Rename: Like :Move, but relative to the current file's containing
" directory.
" :Chmod: Change the permissions of the current file.
" :Mkdir: Create a directory, defaulting to the parent of the current file.
" :Find: Run find and load the results into the quickfix list.
" :Locate: Run locate and load the results into the quickfix list.
" :Wall: Write every open window. Handy for kicking off tools like guard.
" :SudoWrite: Write a privileged file with sudo.
" :SudoEdit: Edit a privileged file with sudo.
" File type detection for sudo -e is based on original file name.
" New files created with a shebang line are automatically made executable.
" New init scripts are automatically prepopulated with /etc/init.d/skeleton.
Plug 'tpope/vim-eunuch'

""""""""""""""""""""""""""""""""""""""""
" File Navigation
""""""""""""""""""""""""""""""""""""""""

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
"
" See: https://github.com/ctrlpvim/ctrlp.vim
Plug 'ctrlpvim/ctrlp.vim'

" Vim plugin for the Perl module / CLI script 'ack'
"
" See: https://github.com/mileszs/ack.vim
"
" Normal mode:
" <leader>g     Toggle Ack.vim
"
" Once results window is open:
" ?    a quick summary of these keys, repeat to close
" o    to open (same as Enter)
" O    to open and close the quickfix window
" go   to preview file, keeping focus on the results
" t    to open in new tab
" T    to open in new tab, keeping focus on the results
" h    to open in horizontal split
" H    to open in horizontal split, keeping focus on the results
" v    to open in vertical split
" gv   to open in vertical split, keeping focus on the results
" q    to close the quickfix window
Plug 'mileszs/ack.vim'

" With bufexplorer, you can quickly and easily switch between buffers by using the one of the default public interfaces
"
" See: http://www.vim.org/scripts/script.php?script_id=42
"
" <leader>be   (normal open)  or
" <leader>bs   (force horizontal split open)
" <leader>bv   (force vertical split open)
Plug 'vim-scripts/bufexplorer.zip'

""" DISABLED!
"
" A tree explorer plugin for vim.
"
" See: https://github.com/scrooloose/nerdtree
" Plug 'scrooloose/nerdtree'

""" DISABLED!
"
" NERDTree plugin to show git statuses
"
" See: https://github.com/Xuyuanp/nerdtree-git-plugin
" Plug 'Xuyuanp/nerdtree-git-plugin'

""""""""""""""""""""""""""""""""""""""""
" Text Navigation
""""""""""""""""""""""""""""""""""""""""

" A vim script to provide CamelCase motion through words (fork of inkarkat's
" camelcasemotion script)
"
" See: https://github.com/chaoren/vim-wordmotion
Plug 'chaoren/vim-wordmotion'

" EasyMotion provides a much simpler way to use some motions in vim. It takes
" the <number> out of <number>w or <number>f{char} by highlighting all
" possible choices and allowing you to press one key to jump directly to the
" target.
"
" See: https://github.com/easymotion/vim-easymotion
"
" <leader><leader>w     Find motion on steroids
" <leader><leader>f     Word motion on steroids
Plug 'easymotion/vim-easymotion'

" Improved incremental searching for Vim
"
" See: https://github.com/haya14busa/incsearch.vim
"
" z?    Fuzzy search backward
" z/    Fuzzy search forward
" zg/   Fuzzy search but stay
Plug 'haya14busa/incsearch.vim'
" https://github.com/haya14busa/incsearch-fuzzy.vim
Plug 'haya14busa/incsearch-fuzzy.vim'

""""""""""""""""""""""""""""""""""""""""
" Editing
""""""""""""""""""""""""""""""""""""""""

" surround.vim: quoting/parenthesizing made simple
"
" See: https://github.com/tpope/vim-surround
"
" normal mode:
" cs"'    Replace surrounding double quotes with single quotes
" cs'<q>  Replace surrounding single quotes with q tag
" cst"    Replace surrounding tags with double quotes
" dst"    Delete surrounding double quotes
" ysiw]   Wrap the current word with square brackets
" yss)    Wrap the current line with parenteses
" visual mode:
" S<p class="important"> Wrap the highlighted test with a p tag
Plug 'tpope/vim-surround'

" speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
"
" See: https://github.com/tpope/vim-speeddating
"
" 5<C-A> (Increment date by 5 units, based on the current cursor position)
" 2<C-X> (Increment date by 2 units, based on the current cursor position)
"
" Tue, 04 Jan 2000 00:06:01 +0000
Plug 'tpope/vim-speeddating'

" commentary.vim: comment stuff ou
"
" See: https://github.com/tpope/vim-commentary
"
" gcc                 Toggle commenting of the current line
" gcap                Toggle commenting of the current paragraph
" :7,17Commentary     Toggle commenting of lines 7 to 17
" :g/TODO/Commentary
Plug 'tpope/vim-commentary'

" unimpaired.vim: pairs of handy bracket mappings
"
" See: https://github.com/tpope/vim-unimpaired
"
" [b        Open previous buffer
" ]b        Open next buffer
" [B        Open first buffer
" ]B        Open last buffer
" [n        Go to previous SCM conflict
" ]n        Go to next SCM conflict
" [<space>  Insert empty line above
" ]<space>  Insert empty line below
" ]e        Move the current line downward
" [e        Move the current line upward
"
Plug 'tpope/vim-unimpaired'

" Insert or delete brackets, parens, quotes in pair
"
" See: https://github.com/jiangmiao/auto-pairs
" Plug 'jiangmiao/auto-pairs'

""" DISABLED!
"
" Easily search for, substitute, and abbreviate multiple variants of a word
" Fix usual misspelling fast and easy
"
" See: https://github.com/tpope/vim-abolish
"
" :Abolish {despa,sepe}rat{e,es,ed,ing,ely,ion,ions,or}  {despe,sepa}rat{}
" :%Subvert/facilit{y,ies}/building{,s}/g
" crs (Coerce to snake case)
" crm (Coerce to MixedCase)
" crc (Coerce to camelCase)
" crk (Coerce to kebab-case)
" cru (Coerce to UPPERCASE)
" cr. (Coerce to dot.case)
" Plug 'tpope/vim-abolish'

""" DISABLED!
"
" Vim script for text filtering and alignment
" See: https://github.com/godlygeek/tabular
" Plug 'godlygeek/tabular'

""" DISABLED!
"
" Align and AlignMaps lets you align statements on their equal signs, make
" comment boxes, align comments, align declarations, etc.
"
" See: http://www.vim.org/scripts/script.php?script_id=294
" Plug 'Align'

""""""""""""""""""""""""""""""""""""""""
" Templating
""""""""""""""""""""""""""""""""""""""""

" See: https://github.com/sirver/ultisnips
Plug 'sirver/ultisnips'

" vim-snipmate default snippets (Previously snipmate-snippets)
"
" See: https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'

""""""""""""""""""""""""""""""""""""""""
" UI
""""""""""""""""""""""""""""""""""""""""

" lean & mean status/tabline for vim that's light as air
"
" See: https://github.com/vim-airline/vim-airline
Plug 'bling/vim-airline'

" One colorscheme pack to rule them all!
"
" See: https://github.com/flazz/vim-colorschemes
Plug 'flazz/vim-colorschemes'

""" DISABLED!
"
" A Vim color scheme. http://stevelosh.com/projects/badwolf/
"
" See: https://github.com/sjl/badwolf
" Plug 'sjl/badwolf'

""" DISABLED!
"
" Precision color scheme for multiple applications (terminal, vim, etc.) with
" both dark/light modes http://ethanschoonover.com/solarized
"
" See: http://ethanschoonover.com/solarized
" Plug 'altercation/solarized'

""" DISABLED!
"
" Molokai color scheme for Vim
"
" See: https://github.com/tomasr/molokai
" Plug 'tomasr/molokai'

""" DISABLED!
"
" Dark vim theme with pronounced colors
"
" See: https://github.com/wellsjo/wellsokai.vim
" Plug 'wellsjo/wellsokai.vim'

""""""""""""""""""""""""""""""""""""""""
" Generatl programming support
""""""""""""""""""""""""""""""""""""""""

" A solid language pack for Vim
"
" See: https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" A class outline viewer for Vim
"
" See: https://github.com/majutsushi/tagbar
" See: http://majutsushi.github.io/tagbar/
Plug 'majutsushi/tagbar'

" Automated tag generation and syntax highlighting in Vim
"
" See: http://peterodding.com/code/vim/easytags/
" See: https://github.com/xolox/vim-easytags
Plug 'xolox/vim-easytags'
" See: https://github.com/xolox/vim-misc
Plug 'xolox/vim-misc'

" Perform all your vim insert mode completions with Tab
"
" See: https://github.com/ervandew/supertab
Plug 'ervandew/supertab'

""""""""""""""""""""""""""""""""""""""""
" Frontend
""""""""""""""""""""""""""""""""""""""""

" Vim Markdown runtime files
"
" See: https://github.com/tpope/vim-markdown
Plug 'tpope/vim-markdown', {'for': 'md'}

" JSON support
"
" See: https://github.com/elzr/vim-json
Plug 'elzr/vim-json', {'for': 'json'}

" JSON support
"
" See: https://github.com/tpope/vim-jdaddy
" aj, gqaj, gwaj
Plug 'tpope/vim-jdaddy', {'for': 'json'}

" emmet for vim
"
" See: https://github.com/mattn/emmet-vim
Plug 'mattn/emmet-vim'

" Vastly improved Javascript indentation and syntax support in Vim.
"
" See: https://github.com/pangloss/vim-javascript
Plug 'pangloss/vim-javascript', {'for': 'js'}

" Syntax for JavaScript libraries
"
" See: https://github.com/othree/javascript-libraries-syntax.vim
Plug 'othree/javascript-libraries-syntax.vim', {'for': 'js'}

" Typescript syntax files for Vim
"
" See: https://github.com/leafgarland/typescript-vim
Plug 'leafgarland/typescript-vim', {'for': 'ts'}

""" DISABLED!
"
" Less support
"
" See: https://github.com/groenewege/vim-less
"Plug 'groenewege/vim-less'

""""""""""""""""""""""""""""""""""""""""
" Scripting
""""""""""""""""""""""""""""""""""""""""

" pep8 - Python style guide checker
"
" See: https://github.com/cburroughs/pep8.py
Plug 'cburroughs/pep8.py', {'for': 'py'}

" See: https://github.com/vim-php/tagbar-phpctags.vim
Plug 'vim-php/tagbar-phpctags.vim'

" Twig syntax highlighting, snipMate, etc.
"
" See: https://github.com/evidens/vim-twig
Plug 'evidens/vim-twig', {'for': 'php'}

" Up-to-date PHP syntax file
"
" See: https://github.com/stanangeloff/php.vim
Plug 'stanangeloff/php.vim', {'for': 'php'}

" Types "use" statements for you
"
" See: https://github.com/arnaud-lb/vim-php-namespace
Plug 'arnaud-lb/vim-php-namespace', {'for': 'php'}

""""""""""""""""""""""""""""""""""""""""
" Backend
""""""""""""""""""""""""""""""""""""""""

" DBGP debugger
"
" See: https://github.com/joonty/vdebug
Plug 'joonty/vdebug'

" Vim configuration for Rust.
"
" See: https://github.com/rust-lang/rust.vim
Plug 'rust-lang/rust.vim', {'for': 'rs'}

" Vim configuration files for Elixir
"
" See: https://github.com/elixir-lang/vim-elixir
Plug 'elixir-lang/vim-elixir', {'for': 'ex'}

" Go (golang) support for Vim
"
" See: https://github.com/fatih/vim-go
Plug 'fatih/vim-go'

" Vim plugin for the godoctor
"
" See: https://github.com/godoctor/godoctor.vim
"
" :Rename
" :Refactor
Plug 'godoctor/godoctor.vim'

" Syntax Highlights the .slide and .article files for a Go Present Tool files
"
" See: https://github.com/corylanou/vim-present
Plug 'corylanou/vim-present', {'for' : 'present'}

" Neovim / Vim integration for Delve
"
" See: https://github.com/sebdah/vim-delve
Plug 'sebdah/vim-delve'

""""""""""""""""""""""""""""""""""""""""
" Sysadmin stuff
""""""""""""""""""""""""""""""""""""""""

" Nginx runtime files for Vim http://hg.nginx.org/nginx/
"
" See: https://github.com/fatih/vim-nginx
Plug 'fatih/vim-nginx', {'for': 'nginx'}

""""""""""""""""""""""""""""""""""""""""
" DevOps stuff
""""""""""""""""""""""""""""""""""""""""

" Vim syntax for TOML
"
" See: https://github.com/cespare/vim-toml
Plug 'cespare/vim-toml', {'for': 'toml'}

" Vim syntax file & snippets for Docker's Dockerfile
"
" See: https://github.com/ekalinin/Dockerfile.vim
Plug 'ekalinin/Dockerfile.vim', {'for': 'Dockerfile'}

" Vim plugin to format Hashicorp Configuration Language (HCL) files, this
" format is used by a number of Hashicorp tools, such as Terraform as the
" language used for configuration.
"
" See: https://github.com/fatih/dotfiles/blob/master/vimrc
Plug 'fatih/vim-hclfmt'

""""""""""""""""""""""""""""""""""""""""
" End of plugin definitions
""""""""""""""""""""""""""""""""""""""""

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" Basic settings
""""""""""""""""""""""""""""""""""""""""

" Enable automatic saving
set autowrite

" Enable syntax highlighting
syntax on

" Enable file type detection
filetype plugin indent on

" Redefine mapleader (prefix for combinations)
let mapleader = ","
" Redefine mapleader for filetype-bound combinations (prefix for combinations)
let maplocalleader = "\\"

set noignorecase
set hlsearch
set nocompatible
set number
set smartindent
set fileencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start
set smartcase
set gdefault
set incsearch
set showmatch
" set list listchars=tab:»·,trail:·,eol:¶,extends:>
set list
set listchars=tab:»·,trail:·,extends:>
set noswapfile
set visualbell
set cursorline
set cc=120
set statusline=%f\ \ line:%l/%L\ col:%c\ %p%%\ %y

" Set filetype as nginx for .conf files in nginx directories
au BufRead,BufNewFile */nginx/*.conf if &ft == '' | setfiletype nginx | endif

" Open Quickfix after using :grep or :Ggrep
autocmd QuickFixCmdPost *grep* cwindow

" Don't tab complete some files
set wildignore+=.DS_Store,.git,.hg,.svn

let g:rehash256 = 1
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

"colorscheme badwolf
"colorscheme monochrome
"colorscheme molokai
"colorscheme monokai
"colorscheme beekai
colorscheme seti

""""""""""""""""""""""""""""""""""""""""
" File handling
""""""""""""""""""""""""""""""""""""""""

if has("autocmd")
    " Syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab iskeyword+=-
    autocmd FileType go setlocal ts=4 sts=4 sw=4 noexpandtab

    " Customisations based on house-style (arbitrary)
    autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab iskeyword+=-
    autocmd FileType xml setlocal ts=4 sts=4 sw=4 expandtab iskeyword+=-
    autocmd FileType css setlocal ts=4 sts=4 sw=4 expandtab iskeyword+=-
    autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType sh setlocal ts=2 sts=2 sw=2 expandtab iskeyword+=-
    autocmd FileType zsh setlocal ts=2 sts=2 sw=2 expandtab iskeyword+=-
    autocmd FileType vim setlocal ts=4 sts=4 sw=4 expandtab iskeyword+=-
    autocmd FileType vifmrc setlocal ts=4 sts=4 sw=4 expandtab iskeyword+=-
    autocmd FileType Dockerfile setlocal ts=4 sts=4 sw=4 expandtab

    autocmd FileType nginx setlocal ts=4 sts=4 sw=4 expandtab commentstring=#\ %s

    " Treat .rss files as XML
    autocmd BufNewFile,BufRead *.rss setfiletype xml

    " Fixing wrongly guessed filetpyes
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.rss, *.atom set filetype=xml
endif

" put quickfix window always to the bottom
autocmd FileType qf wincmd J
augroup quickfix
    autocmd!
    autocmd FileType qf setlocal wrap
augroup END

""""""""""""""""""""""""""""""""""""""""
" General mappings
""""""""""""""""""""""""""""""""""""""""

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode - Breaks a lot of plugins
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

" Navigating windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Center the screen
nnoremap <space> zz

" Expand the current directory path
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
" Open neigbouring file
map <leader>ew :e %%
" Open neigbouring file in horizontal split
map <leader>es :sp %%
" Open neigbouring file in vertical split
map <leader>ev :vsp %%
" Open neigbouring file in tab
map <leader>et :tabe %%

" Close current buffer
map <leader>bd :Bclose<cr>

" Close all buffers
map <leader>ba :1,1000 bd!<cr>

" Manage tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Navigate on wrapped lines
noremap <buffer> <silent> k gk
noremap <buffer> <silent> j gj
noremap <buffer> <silent> 0 g0
noremap <buffer> <silent> $ g$

" Custom generators
" Insert hugo-ready date: Ctrl+j d
" Insert uuid: Ctrl+j u
imap <c-d>g <c-r>=strftime("%d.%m.%Y %H:%M:%S")<cr>
imap <c-d>s <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
imap <c-d>h <c-r>=system('~/.vim/scripts/generators/ins_hugo_date.py')<cr>
imap <c-d>u <c-r>=system('~/.vim/scripts/generators/ins_uuid.py')<cr>

" Toggling spell checking
nmap <silent> <leader>ss :set spell!<CR>

" Some useful quickfix shortcuts for quickfix
map <C-n> :cn<CR>
map <C-m> :cp<CR>
nnoremap <leader>Q :cclose<CR>

" Fast saving
nnoremap <leader>w :w!<cr>
nnoremap <silent> <leader>qq :q!<CR>

" Remove search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Close all but the current buffer
nnoremap <leader>O :only<CR>

" Source (reload configuration)
nnoremap <silent> <F5> :source $MYVIMRC<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
" Same when moving up and down
noremap <C-d> <C-d>zz
noremap <C-u> <C-u>zz

" Do not show stupid q: window
map q: :q

" Reformat code with F7
map <F7> mzgg=G`z

" Toggle paste mode on and off
map <leader>mp :setlocal paste!<cr>

" Surround the visual selection in parenthesis/brackets/etc
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Bash like keys for the command line
cnoremap <c-a> <Home>
cnoremap <c-e> <End>
cnoremap <c-k> <C-U>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>

" Cope shortcuts
" Open a window with the current list of errors

map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>

""""""""""""""""""""""""""""""""""""""""
" Custom functions with mappings
""""""""""""""""""""""""""""""""""""""""

" create a go doc comment based on the word under the cursor
function! s:create_go_doc_comment()
    norm "zyiw
    execute ":put! z"
    execute ":norm I// \<Esc>$"
endfunction

au FileType go nnoremap <leader>ui :<C-u>call <SID>create_go_doc_comment()<CR>

nnoremap <silent> <leader>sf :setlocal ts=4 sts=4 sw=4 expandtab<CR>
nnoremap <silent> <leader>st :setlocal ts=2 sts=2 sw=2 expandtab<CR>
nnoremap <silent> <leader>tf :setlocal ts=4 sts=4 sw=4 noexpandtab<CR>
nnoremap <silent> <leader>tt :setlocal ts=2 sts=2 sw=2 noexpandtab<CR>

" PrepareCopy
function! PrepareCopy(...)
    execute "set nonu nolist foldcolumn=0"
endfunction

nnoremap <leader><leader>c :call PrepareCopy()<CR>

nnoremap <leader><leader>m :messages<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""
" ZoomWin
""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>o <C-w>o

""""""""""""""""""""""""""""""""""""""""
" bufutils.vim
""""""""""""""""""""""""""""""""""""""""

map <leader>qp :BClosePreviews<cr>
map <leader>qa :BCloseAll<cr>

""""""""""""""""""""""""""""""""""""""""
" vim-addon-local-vimrc
""""""""""""""""""""""""""""""""""""""""

let g:local_vimrc = {'names':['.vimrc'],'hash_fun':'LVRHashOfFile'}

""""""""""""""""""""""""""""""""""""""""
" vim-fugitive
""""""""""""""""""""""""""""""""""""""""

vnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>ga :Gwrite<CR>
nnoremap <leader>gco :Gread<CR>
nnoremap <leader>gm :Gmove<CR>
nnoremap <leader>gcm :Gcommit<CR>

""""""""""""""""""""""""""""""""""""""""
" ctrlp.vim
""""""""""""""""""""""""""""""""""""""""

let g:ctrlp_working_path_mode = 'wra'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/](\.git|\.hg|\.svn|vendor|tmp|dist|node_modules)$',
            \ }
let g:ctrlp_switch_buffer = 'et'
" let g:ctrlp_clear_cache_on_exit = 1
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40

nnoremap <leader>. :CtrlPTag<cr>

""""""""""""""""""""""""""""""""""""""""
" nerdtree
""""""""""""""""""""""""""""""""""""""""

" Open NERDTree with Ctrl + n
map <C-n> :NERDTreeToggle<CR>

" vim-javascript settings
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 0
let g:javascript_plugin_flow = 0
" set foldmethod=syntax
set conceallevel=0

""""""""""""""""""""""""""""""""""""""""
" ack.vim
""""""""""""""""""""""""""""""""""""""""

if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

map <leader>g :Ack

vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

""""""""""""""""""""""""""""""""""""""""
" wordmotion
""""""""""""""""""""""""""""""""""""""""

" let g:wordmotion_mappings = {
" \ 'w' : '<M-w>',
" \ 'b' : '<M-b>',
" \ 'e' : '<M-e>',
" \ 'ge' : 'g<M-e>',
" \ 'aw' : 'a<M-w>',
" \ 'iw' : 'i<M-w>'
" \ '<C-R><C-W>' : '<C-R><M-w>'
" \ }
let g:wordmotion_prefix = '<Leader>'

""""""""""""""""""""""""""""""""""""""""
" vim-easymotion
""""""""""""""""""""""""""""""""""""""""

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

" h, j, k, l
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>k <Plug>(easymotion-k)
map <Leader>j <Plug>(easymotion-j)
map <Leader>l <Plug>(easymotion-lineforward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

""""""""""""""""""""""""""""""""""""""""
" incsearch.vim
""""""""""""""""""""""""""""""""""""""""

map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

""""""""""""""""""""""""""""""""""""""""
" ultisnips
""""""""""""""""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

""""""""""""""""""""""""""""""""""""""""
" tagbar
""""""""""""""""""""""""""""""""""""""""

" au BufWritePost *.go silent! !gotags -R -f ./.git/tags . &

" tagbar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

nmap <leader>tb :TagbarOpenAutoClose<CR>

""""""""""""""""""""""""""""""""""""""""
" vim-easytags
""""""""""""""""""""""""""""""""""""""""

set tags=./.git/tags
autocmd FileType go let g:easytags_cmd = '/usr/local/bin/gotags'
autocmd FileType php let g:easytags_cmd = '/usr/local/bin/phpctags'
let g:easytags_dynamic_files = 1
let g:easytags_file = './.git/tags'
let g:easytags_async = 1
let g:easytags_by_filetype = 1

" Uncomment this if sytax highlighting is too slow
" let g:easytags_syntax_keyword = 'always'

" Enable easytags
" let g:easytags_always_enabled = 1

" Disable periodic update if necessary
" let g:easytags_on_cursorhold = 0

" Fine-tune tags creation
" let g:easytags_events = ['BufWritePost']

" This disables all automatic tags highlighting (regardless of how it was
" enabled) where automatic means initiated by a Vim automatic command.
" let g:easytags_auto_highlight = 0

" If this is set and not false, it will suppress the report displayed on tag updates.
" let g:easytags_suppress_ctags_warning = 1

" If this is set and not false, it will suppress the report displayed on tag updates.
" let g:easytags_suppress_report = 1

""""""""""""""""""""""""""""""""""""""""
" supertab
""""""""""""""""""""""""""""""""""""""""

" let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabCrMapping=1

""""""""""""""""""""""""""""""""""""""""
" vim-markdown
""""""""""""""""""""""""""""""""""""""""

let g:markdown_fenced_languages = ['html', 'go', 'bash=sh']

" Syntax highlight is synchronized in 50 lines. It may cause collapsed highlighting at large fenced code block
" let g:markdown_minlines = 100

""""""""""""""""""""""""""""""""""""""""
" emmet-vim
""""""""""""""""""""""""""""""""""""""""

" Disable global usage
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" Remap trigger key
" let g:user_emmet_leader_key='<C-Z>'

""""""""""""""""""""""""""""""""""""""""
" javascript-libraries-syntax.vim
""""""""""""""""""""""""""""""""""""""""

let g:used_javascript_libs = 'underscore,jquery'

""""""""""""""""""""""""""""""""""""""""
" typescript-vim
""""""""""""""""""""""""""""""""""""""""

let g:typescript_indent_disable = 0

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

""""""""""""""""""""""""""""""""""""""""
" vim-go
""""""""""""""""""""""""""""""""""""""""

let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 1
let g:go_list_type = "quickfix"
let g:go_auto_type_info = 0
let g:go_def_mode = "guru"
let g:go_echo_command_info = 1
let g:go_gocode_autobuild = 0
let g:go_gocode_unimported_packages = 1
let g:go_autodetect_gopath = 1
let g:go_info_mode = "guru"
" let g:go_play_open_browser = 0
let g:go_metalinter_enabled = ['vet', 'vetshadow', 'gotype', 'deadcode', 'gocyclo', 'golint', 'varcheck', 'structcheck', 'errcheck', 'megacheck', 'dupl', 'ineffassign', 'interfacer', 'unconvert', 'goconst', 'gas', 'test', 'misspell', 'unused', 'safesql', 'staticcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_deadline = "45s"
let g:go_highlight_space_tab_error = 0
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 0
let g:go_modifytags_transform = 'camelcase'

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
        call go#test#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
    endif
endfunction

augroup go
    autocmd!

    autocmd FileType go nmap <C-g> :GoDecls<cr>
    autocmd FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
    autocmd FileType go nmap <Leader>gd <Plug>(go-doc)
    autocmd FileType go map <leader>n :cnext<CR>
    autocmd FileType go map <leader>p :cprevious<CR>
    " autocmd FileType go nnoremap <leader>Q :cclose<CR>

    autocmd FileType go nmap <silent> <Leader>dv <Plug>(go-def-vertical)
    autocmd FileType go nmap <silent> <Leader>ds <Plug>(go-def-split)
    autocmd FileType go nmap <silent> <Leader>do <Plug>(go-doc-vertical)
    autocmd FileType go nmap <silent> <Leader>i <Plug>(go-info)
    autocmd FileType go nmap <silent> <Leader>ml <Plug>(go-metalinter)
    autocmd FileType go nmap <silent> <leader>bp :<C-u>call <SID>build_go_files()<CR>
    autocmd FileType go nmap <silent> <leader>t <Plug>(go-test)
    autocmd FileType go nmap <silent> <leader>r <Plug>(go-run)
    autocmd FileType go nmap <silent> <Leader>cr <Plug>(go-coverage-toggle)
augroup END

""""""""""""""""""""""""""""""""""""""""
" vim-php-namespace
""""""""""""""""""""""""""""""""""""""""

" Import classes or functions (add use statements)
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" Sort existing use statements alphabetically
autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>
let g:php_namespace_sort_after_insert = 1

" Make class or function names fully qualified
"
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

""""""""""""""""""""""""""""""""""""""""
" tagbar-phpctags
""""""""""""""""""""""""""""""""""""""""

let g:tagbar_phpctags_bin='/usr/local/bin/phpctags'
let g:tagbar_phpctags_memory_limit = '1024M'


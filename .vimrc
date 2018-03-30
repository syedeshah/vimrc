" .vimrc file by Syed E Shah
" https://github.com/syedeshah/vimrc
" ================================
" ============================================================================
" INSTALLED PLUGINS
" ============================================================================
" VIM POWERLINE
set laststatus=2

" VIM SNIPMATE
" /dependencies for VIM SNIPMATE/
" VIM ADDON MW UTILS
" tLIB_VI
" VIM-SNIPPETS
" / For live web dev updates
" browserlink.vim (https://github.com/jaxbot/browserlink.vim)
" use <script src='http://127.0.0.1:9001/js/socket.js'></script> to page
" to activate refresh at save.
" NERDTREE
map <C-n> :NERDTreeToggle<CR>
" for CTRL n to open NERDtree
" ============================================================================
" SETTINGS
" ============================================================================

" AUTOMATIC RELOADING OF .vimrc
" ============================================================================
autocmd! bufwritepost .vimrc source %

" COPY & PASTE
" ============================================================================
set pastetoggle=<F2> " fn and F2 for paste mode
set clipboard=unnamed

" MOUSE
" ============================================================================
set mouse=a " Press ALT and click

" SHOW WHITEPSACE
" ============================================================================
" MUST be inserted BEFORE the color scheme commmand
" ============================================================================
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" COLOR SCHEME
" ============================================================================
set t_Co=256
color wombat256mod

" ENABLE SYNTAX HIGHLIGHTING
" ============================================================================
filetype off
filetype plugin indent on
syntax on

" SHOWING LINE NUMBERS AND LENGTH
" ============================================================================
set number " to show line numbers
set tw=79 " width of document
set nowrap " don't automatically wrap on loud
set fo-=t " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" HISTORY
" ============================================================================
set history=700
set undolevels=700

" MAKE SEARCHES CASE INSESITIVE
" ============================================================================
set hlsearch
set incsearch
set ignorecase
set smartcase

" PATHOGEN SETUP TO MANAGE PLUGINS
" ============================================================================
" plugins can now be installed into .vim/bundle/plugin-name/ folder
" ============================================================================
call pathogen#infect ()

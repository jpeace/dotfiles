filetype on
syntax on
filetype plugin on

set nocompatible
set nu
set ruler
set cf
set nowrap
set showmatch
set ts=2
set bs=2
set shiftwidth=2
set clipboard+=unnamed
set history=256

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

" recently accessed projects menu (project plugin)
set viminfo^=!
 
" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>
  
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

let $JS_CMD='node'

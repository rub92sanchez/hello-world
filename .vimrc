syntax on			" enable syntax processing
set background=dark 		" set black background for colorscheme
colorscheme solarized		" set default colorscheme

" PLUGINS

execute pathogen#infect()
let g:ackprg = 'ag --nogroup --nocolor --column'

" Spaces & Tabs

set tabstop=2			" number of visual spaces per TAB

set shiftwidth=2   " number of spaces when indenting

set softtabstop=2		" number of spcaes in TAB when editing

set expandtab			" TAB is now a shortcut to insert # spaces

" UI Config

set number			" show line number (test and remove if it is annoying)

set showcmd			" show command in bottom bar

set cursorline			" highlight current line (test and remove if it is annoying)

filetype indent on 		" load filetype-specific indent file (check the specifical effects of this command)

set wildmenu			" visual autocomplete for command menu

set lazyredraw			" redraw only when we need to

set showmatch			" highlight mathching [{()}]

" SEARCHING

set incsearch			" search as characters are entered

set hlsearch			" highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" FOLDING

set foldenable			" enable folding

set foldlevelstart		" open most folds by default

set foldnestmax			" 10 nested fold max

" space open/close folds
nnoremap <space> za

set foldmethod=indent " fold based on indent level

" MOVING
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap gV `[v`]

nnoremap <F5> :GundoToggle<CR>
nnoremap <F6> :Ag

nnoremap <F7> :bp<CR>
nnoremap <F8> :bn<CR>

" LEADER SHORTCUTS
let mapleader=","		" leader is a comma

" CtrlP SETTINGS
let g:ctrlp_match_windows = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag % -1 --nocolor -g ""'

" NERDtree SETTINGS
:set mouse=a
let g:NERDTreeMouseMode=3

" YouCompleteMe SETTINGS
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1
let g:ycm_use_ultisnips_completer = 0

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1


let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''


let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info


let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1


let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'


nnoremap <F10> :YcmForceCompileAndDiagnostics <CR>

let g:UltiSnipsSnippetDirectories = ['~/.vim/bundle/ultisnips/autoload/UltiSnips', 'UltiSnips']

" Automatically change the current folder
autocmd BufEnter * silent! lcd %:p:h

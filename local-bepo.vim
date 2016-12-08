" ====== MISC ======

set dir=/tmp  " folder for swap file

set listchars=nbsp:¤,tab:❭─,trail:•
set list!

set tabstop=4
set nowrap

set selection=inclusive
set showmatch!

syntax on
set background=light
set t_Co=256
color codeschool
" ====== GUI / THEME / COLOR ======
colorscheme codeschool
set guifont=Monospace\ 8

" Ctrl+C -> Copy to clipboard
vnoremap <C-C> "+ygv

" Ctrl+Q -> alias Ctrl+V for visual mode
noremap <C-B> <C-V>

" Ctrl+V -> Paste from clipboard
map <C-V> "+gP
cmap <C-V> <C-R>+
exe 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exe 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']

" Ctrl+A -> Select all
noremap <C-A> <esc>ggVG<CR>

" Ctrl+Z -> undo
" noremap <C-Z> u
" inoremap <C-Z> <C-O>u

" Ctrl+Y -> redo
" noremap <C-Y> <C-R>
" inoremap <C-Y> <C-O><C-R>

" backspace in Visual mode deletes selection
vnoremap <BS> d

noremap . :

nmap <F3> o<Esc>
nmap <F4> O<Esc>

" PageUp/Down -> nop
map <pageup> {
map <pagedown> }
imap <pageup> <nop>
imap <pagedown> <nop>

inoremap à <esc> :w<cr>
inoremap vv <esc>
noremap à :w<cr>

nnoremap <c-n> :tabn<CR>
nnoremap <c-t> :tabp<CR>

" Shift+PageUp/Down -> Buffer prev/next
map <s-pageup> :bp<cr>
map <s-pagedown> :bn<cr>
imap <s-pageup> <esc>:bp<cr>i
imap <s-pagedown> <esc>:bn<cr>i

"Leader t -> new tab
nnoremap <leader>t :tabnew<cr>

"Surround
nnoremap <leader>" viwc"<esc>pa"<esc>
nnoremap <leader>' viwc'<esc>pa'<esc>

nnoremap <leader>b :Unite grep <CR>
nnoremap <leader>a :Unite buffer <CR>
nnoremap <c-d> :Unite file_mru<CR>
nnoremap <leader>p :FZF <CR>
nnoremap <leader>é :Lines <CR>
nnoremap <leader>n :bn <CR>
nnoremap <leader>x :bd <CR>
nnoremap <leader>av :tabnew ~/.vim/local-bepo.vim<CR>
nnoremap <leader>rv :source ~/.vim/local-bepo.vim<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
let g:unite_split_rule = 'botright'
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1
let g:unite_enable_start_insert = 0
let g:unite_source_hisory_yank_enable = 1
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  let g:ctrlp_use_caching = 0
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
    \ '-i --smart-case --nogroup --nocolor --ignore-dir={.git, vendor, node_modules}'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_rec_async_command =
    \ 'ag --follow --nocolor --nogroup --hidden -g ""'
endif
nnoremap <leader>f :Ag "\b<C-R><C-W>\b"<CR><CR><C-w>
nnoremap <leader>z :Ag "
nnoremap <leader>o <c-w>gfn<cr>

"nnoremap <leader>p :CtrlP<cr>
" nnoremap <c-d> :CtrlPMRUFiles<CR>
nnoremap <c-g> :CtrlPFunky<Cr>
let g:ctrlp_max_files=0

nnoremap <F2> <c-w><c-w><CR>
imap <leader>q  <Esc>
nnoremap <leader>q  :q<CR>

" list of files to ignore (for NERDTree)
"
let ignore = '\v\~$'
let ignore .= '|\.bak$'
let ignore .= '|\.png$'
let ignore .= '|\.jpe?g$'
let ignore .= '|\.gif$'
let ignore .= '|\.svg$'
let ignore .= '|\.xcf$'
let ignore .= '|\.pyc$'
let ignore .= '|node_modules'
let ignore .= '|vendor'
let ignore .= '|.git'
let ignore .= '|.bzr'

" if filereadable(".gitignore")
"   for line in readfile(".gitignore")
"     let line = substitute(line, '\.', '\\.', 'g')
"     let line = substitute(line, '\*', '.*', 'g')
"     let ignore .= '|^' . line
"   endfor
" endif
"
"NERD Tree
nnoremap <F7> :NERDTreeTabsToggle<cr>
inoremap <F7> <esc>:NERDTreeToggle<cr><c-w>la
let g:nerdtree_tabs_open_on_gui_startup=1
let g:NERDTreeIgnore = [ignore]

" Gundo
nnoremap <leader>h :GundoToggle<cr>

" EasyMotion
nmap  è <Plug>(easymotion-bd-w)

" {W} -> [É]
" ——————————
" On remappe W sur É :
noremap é w
noremap É W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
onoremap aé aw
onoremap aÉ aW
onoremap ié iw
onoremap iÉ iW
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap w <C-w>
noremap W <C-w><C-w>

" [HJKL] -> {TSRN}
" ————————————————
" {cr} = « gauche / droite »
noremap t h
noremap n l
" {ts} = « haut / bas »
noremap s j
noremap r k
" {CR} = « haut / bas de l'écran »
noremap T H
noremap N L
" {TS} = « joindre / aide »
noremap S J
noremap R K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk

" {HJL} <- [TSRN]
" ————————————————
" {J} = « Jusqu'à »             (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »              (l = attend un mvt, L = jusqu'à la fin de ligne)
"noremap l c
"noremap L C
" {H} = « Remplace »            (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {L} = « Substitue »           (l = caractère, L = ligne)
noremap l s
noremap L S
" {K} = « Line »                (n = caractère, N = ligne)
noremap k n
noremap K N

" Désambiguation de {g}
" —————————————————————
" optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<CR>
noremap gÉ :exe "silent! tablast"<CR>
" optionnel : {g"} pour aller au début de la ligne écran
noremap g" g0

nnoremap « <
nnoremap » >
inoremap « <
inoremap » >

" Remaper la gestion des fenêtres
" ———————————————————————————————
noremap wt <C-w>j
noremap ws <C-w>k
noremap wc <C-w>h
noremap wr <C-w>l
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o
noremap w<SPACE> :split<CR>
noremap w<CR> :vsplit<CR>

let NERDTreeMapOpenInTab = 'v'
let NERDTreeMapOpenInTabSilent = 'V'
let NERDTreeMapOpenVSplit = 'd'
let NERDTreeMapRefresh = 'l'
let NERDTreeMapRefreshRoot = 'L'
let NERDTreeShowBookmarks=1
let NERDTreeMapActivateNode = 'q'

" CTRLP
let g:ctrlp_by_filename = 1

let g:ctrlp_extensions = ['undo', 'bookmarkdir']

let g:ctrlp_prompt_mappings = {
    \ 'PrtBS()':              ['<bs>', '<c-]>'],
    \ 'PrtDelete()':          ['<del>'],
    \ 'PrtDeleteWord()':      ['<c-w>'],
    \ 'PrtClear()':           ['<c-u>'],
    \ 'PrtSelectMove("j")':   ['S', '<down>'],
    \ 'PrtSelectMove("k")':   ['R', '<up>'],
    \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
    \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
    \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
    \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
    \ 'ToggleFocus()':        ['<s-tab>'],
    \ 'ToggleRegex()':        ['<c-r>'],
    \ 'ToggleByFname()':      ['<c-j>'],
    \ 'PrtClearCache()':      ['<F5>']
    \ }
let g:ctrlp_open_new_file = 't'
let g:ctrlp_custom_ignore = 'node_modules|vendor|.git|cache'

set encoding=utf-8
scriptencoding utf-8
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline_inactive_collapse = 0
let g:virtualenv_auto_activate = 1
let g:airline_section_b = '%{strftime("%H:%M")}'
let g:airline_section_y = ''
let g:airline_theme = 'term'
let g:airline_left_sep=''
let g:airline_right_sep=''
set laststatus=2
set showtabline=2

"""""""""""""""""""""
"  tmuxline config  "
"""""""""""""""""""""
let g:tmuxline_theme = 'airline_insert'
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R']}

"""""""""""""""""""""""
"  promptline config  "
"""""""""""""""""""""""
let g:promptline_theme = 'airline'
let g:promptline_preset = {
        \'a': [ promptline#slices#python_virtualenv() ],
        \'b': [ promptline#slices#cwd({'dir_limit': 2}) ],
        \'c': [ promptline#slices#vcs_branch(), '$(git rev-parse --short HEAD 2>/dev/null)' ],
        \'x': [ promptline#slices#git_status() ],
        \'warn': [ promptline#slices#last_exit_code() ]}

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

" Recommended key-mappings.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

 " For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=nvi
endif

call unite#custom#profile('default', 'context', {
\   'start_insert': 1,
\   'winheight': 10,
\   'direction': 'botright',
\ })

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }
" let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
nnoremap <c-d> :Unite file_mru<CR>
" nnoremap <silent> <Leader>a :call fzf#run({
" \   'down': '~30%',
" \   'sink':  'botright split' })<CR>

" Plugin key-mappings.
imap <F6>     <Plug>(neosnippet_expand_or_jump)
smap <F6>     <Plug>(neosnippet_expand_or_jump)
xmap <F6>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:neosnippet#snippets_directory='~/.vim/mydir'

" start with insert mode
let g:unite_enable_start_insert = 1

" limit number of file history
let g:unite_source_file_mru_limit = 50

" set display format for file_mru
let g:unite_source_file_mru_filename_format = ''

" ignore case
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

let g:unite_source_history_yank_enable = 1
let g:unite_winheight = 20
let g:unite_split_rule = 'topleft'

" the prefix key
nnoremap [unite] <Nop>
nmap <C-u> [unite]

call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <silent> [unite]<C-b> :<C-u>Unite buffer<CR>
nnoremap <silent> [unite]<C-f> :<C-u>Unite file_rec/async<CR>
nnoremap <silent> [unite]<C-u> :<C-u>Unite file_mru<CR>
nnoremap <silent> [unite]<C-n> :<C-u>Unite file/new<CR>

"nnoremap <silent> [unite]<C-f> :<C-u>Unite file_rec/async:!<CR>
"nnoremap <silent> [unite]<C-b> :<C-u>UniteWithBufferDir
"    \ -buffer-name=files buffer bookmark file<CR>
"nnoremap <silent> [unite]<C-c> :<C-u>UniteWithCurrentDir
"    \ -buffer-name=files buffer bookmark file<CR>
"nnoremap <silent> [unite]<C-u> :<C-u>Unite buffer file_mru<CR>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
    " open window with horizonal split
    nnoremap <silent> <buffer> <expr> <C-s> unite#do_action('split')
    inoremap <silent> <buffer> <expr> <C-s> unite#do_action('split')

    " open window with vertical split
    nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
    inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')

    " exit with twice escape key
    nmap <silent> <buffer> <ESC><ESC> q
    imap <silent> <buffer> <ESC><ESC> <ESC>q
endfunction

if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor'
    let g:unite_source_grep_recursive_opt = ''
endif

nnoremap <silent> <C-g><C-g> :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> <C-g><C-w> :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-r><C-w><CR>
nnoremap <silent> <C-g><C-r> :<C-u>UniteResume search-buffer<CR>

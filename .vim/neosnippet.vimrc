" Plugin key-mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
"\ neosnippet#expandable() <Bar><Bar> neosnippet#jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<C-n>"

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

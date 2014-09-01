let g:ref_source_webdict_sites = {
  \ 'alc': {
  \ 'url': 'http://eow.alc.co.jp/search?q=%s',
  \ }
  \ }
let g:ref_source_webdict_sites.default = 'alc'
function! g:ref_source_webdict_sites.alc.filter(output)
  return join(split(a:output, "\n")[38 :], "\n")
endfunction
let g:ref_phpmanual_path = '/Users/JP20008/Documents/vim-ref/php-chunked-xhtml'
"let g:ref_source_webdict_cmd = s:lynx
"let g:ref_phpmanual_cmd = s:lynx
"let g:ref_javadoc_path = 'C:\Users\a13374\Documents\References\java6\ja'
"let g:ref_refe_encoding = 'utf-8'
"let g:ref_refe_cmd = 'C:\Users\a13374\Documents\References\ruby-refm-1.9.3\refe.bat'
let java_highlight_all = 1
let java_highlight_debug = 1
let java_highlight_function = 1
let java_space_errors = 1

function settingloader#Airline()
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
endfunction

function settingloader#Jellybeans()
    let g:jellybeans_overrides = {
    \    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
    \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
    \              'attr': 'bold' },
    \    'Statement': { 'guifg': 'fff187'},
    \    'cOperator': { 'guifg': 'fff187'},
    \    'Function': { 'guifg': '80bfff' },
    \    'Type': { 'guifg': 'b3ffb3' },
    \    'StorageClass': { 'guifg': '99ffd6' },
    \    'Title': { 'guifg': 'f0b3ff' },
    \    'Special': { 'guifg': 'ebccff' },
    \    'String': { 'guifg': 'ff99bb' }, 
    \    'background': { 'guibg': '000000' },
    \}    
    colorscheme jellybeans
endfunction

function settingloader#Syntastic() 
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1 
    let g:syntastic_auto_loc_list = 1 
    let g:syntastic_check_on_open = 1 
    let g:syntastic_check_on_wq = 0 

    "syntax checkers
    let g:syntastic_javascript_checkers = ['jshint']
    let g:syntastic_python_checkers = ['flake8']
endfunction

function settingloader#MuComplete()
    set completeopt+=menuone
    set completeopt+=noselect
    set shortmess+=c   " Shut off completion messages
    set belloff+=ctrlg " If Vim beeps during completion
endfunction 

function settingloader#Completor()
    let g:completor_clang_binary='/usr/bin/clang' "on Linux console: $ which clang
    let g:completor_python_binary='/usr/bin/python3' "on Linux console: $ which python3 
    let g:completor_node_binary = '/usr/bin/node' "on Linux console: $ which node
    autocmd FileType c,cpp,php,py,js inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    autocmd FileType c,cpp,php,py,js inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    autocmd FileType c,cpp,php,py,js inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
    set completeopt-=longest
    set completeopt+=menuone
    set completeopt-=menu
    if &completeopt !~# 'noinsert\|noselect'
        set completeopt+=noselect
    endif
endfunction


function settingloader#LuaComplete()
    let g:lua_compiler_name = '/usr/bin/luac'
    let g:lua_complete_omni = 1
endfunction

function settingloader#CppEnhancedHighlight()
    let g:cpp_class_scope_highlight = 1 
    let g:cpp_member_variable_highlight = 1 
    let g:cpp_class_decl_highlight = 1 
    let g:cpp_experimental_template_highlight = 1
    let g:cpp_concepts_highlight = 1
endfunction

function settingloader#VimOmniCompletion()
    autocmd FileType php set omnifunc=phpcomplete#CompletePHP
    autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
    "autocm FileType javascript set omnifunc=tern#Complete
    autocmd FileType css set omnifunc=csscomplete#CompleteCSS
endfunction

function settingloader#Snippets()
    let g:UltiSnipsExpandTrigger="<c-k>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"
endfunction

function settingloader#SearchTasks()
    let g:searchtasks_list=["TODO", "FIXME", "XXX"]
endfunction

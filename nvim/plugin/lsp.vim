" Do this in lua?? maybe...
" vim.o is short for something teej thinks makes sense.
set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" fun! LspLocationList()
"     " lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
" endfun
"

" nnoremap gd :lua vim.lsp.buf.definition()<CR>
" nnoremap gd :Lspsaga preview_definition<CR>
nnoremap gd :lua vim.lsp.buf.declaration()<CR>
" nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gD :lua vim.lsp.buf.definition()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
" nnoremap gi :Lspsaga implement<CR>
nnoremap gsh :lua vim.lsp.buf.signature_help()<CR>
" nnoremap gsh :Lspsaga signature_help<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
" nnoremap gr :Lspsaga lsp_finder<CR>
" nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap gR :lua vim.lsp.buf.rename()<CR>
" nnoremap gR :Lspsaga rename<CR>
nnoremap gh :lua vim.lsp.buf.hover()<CR>
" nnoremap gh :Lspsaga hover_doc<CR>
nnoremap <leader>a :lua vim.lsp.buf.code_action()<CR>
" nnoremap <leader>a :Lspsaga code_action<CR>
" vim.lsp.diagnostic.show_line_diagnostics()
nnoremap <space>e :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
" nnoremap <space>e :Lspsaga show_line_diagnostics<CR>
nnoremap ]d :lua vim.lsp.diagnostic.goto_next()<CR>
" nnoremap ]d :Lspsaga diagnostic_jump_next<CR>
nnoremap [d :lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap [d :Lspsaga diagnostic_jump_prev<CR>
" nnoremap <space>q :call LspLocationList()<CR>

" augroup THE_PRIMEAGEN_LSP
"     autocmd!
"     autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
" augroup END
"
augroup fmt
  autocmd!
  " autocmd BufWritePre * undojoin | Neoformat
  autocmd BufWritePre *.go,*.rs,*.cpp,*.c,*.lua,*.sh,*.vim,*.py undojoin | Neoformat

augroup END



let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true

let g:neoformat_try_formatprg = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
let g:prettier#quickfix_enabled = 0
let g:yankring_clipboard_monitor=0
" commenting
"
" " Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

let g:vimsence_small_text = '(Neo)Vim'
let g:vimsence_small_image = 'neovim'
let g:vimsence_file_explorer_text = 'In NERDTree'
let g:vimsence_file_explorer_details = 'Looking for files'

inoremap <silent><expr> <CR>      compe#confirm('<CR>')

" nnoremap <silent><c-[> :<c-u>exe v:count1 . "ToggleTerm"<CR>

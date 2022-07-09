" Code navigation shortcuts
nnoremap <silent> <leader>d     <cmd>lua vim.diagnostic.open_float()<CR>

nnoremap <silent> <leader>a     <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> <leader>]     <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> g0            <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> <leader>f     <cmd>lua vim.lsp.buf.format { async = true }<CR>
nnoremap <silent> <leader>k     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD            <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr            <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>K     <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>[     <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gW            <cmd>lua vim.lsp.buf.workspace_symbol()<CR>

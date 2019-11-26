colorscheme gruvbox
autocmd BufRead,BufNewFile *.svelte set filetype=html
set backupcopy=yes

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

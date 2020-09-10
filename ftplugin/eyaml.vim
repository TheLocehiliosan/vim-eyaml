function! EyamlDecrypt()
  echo "Decrypting eyaml:"
  echo ""
  .w !eyaml decrypt --stdin 2>/dev/null
  echo ""
endfunction
nnoremap <leader>ey :call EyamlDecrypt()<cr>
nnoremap <leader>eY :w!<cr>:-tab terminal ++close eyaml edit %<cr>
vnoremap <leader>ey c<C-R>=system('eyaml encrypt -o string --stdin', getreg('"'))[:-2]<CR><esc>
set comments=:#
set commentstring=#%s

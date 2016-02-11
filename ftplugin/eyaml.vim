function! EyamlDecrypt()
  echo "Decrypting eyaml:"
  echo ""
  .w !eyaml decrypt --stdin 2>/dev/null
  echo ""
endfunction
nnoremap <leader>ey :call EyamlDecrypt()<cr>

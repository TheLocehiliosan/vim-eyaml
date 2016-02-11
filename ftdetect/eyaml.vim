" use eyaml filetype for both eyaml and yaml files
autocmd BufNewFile,BufRead *.eyaml setfiletype eyaml
autocmd BufNewFile,BufRead *.yaml  setlocal filetype=eyaml

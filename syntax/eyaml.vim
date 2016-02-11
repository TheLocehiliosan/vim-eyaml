if exists("b:current_syntax")
    finish
endif

" import any yaml syntax available
runtime! syntax/yaml.vim

" include periods in yaml keys
syn match  eyamlKey    "\(\w\|\.\)\+\ze\s*:"

" highlight encoded data
syn region eyamlEncode start="ENC\["          end="\]"
syn region eyamlEncode start="DEC.*::PKCS7\[" end="\]!"

" link colors
hi link eyamlKey    Identifier
hi link eyamlEncode Special

let b:current_syntax = "eyaml"

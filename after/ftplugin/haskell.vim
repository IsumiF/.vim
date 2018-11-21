" Use stylish haskell instead of brittany (from HIE)
map <buffer> <F5> ma:%!stylish-haskell<CR>'a
setlocal formatprg=stylish-haskell
setlocal foldcolumn=1
map <buffer> <Leader>LAN I{-# LANGUAGE  #-}<Esc>hhhi


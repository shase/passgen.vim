let s:save_cpo = &cpo
set cpo&vim

py3file <sfile>:h:h/python3/passgen.py
python3 import vim

function! passgen#passgen(size)
  python3 passgenvim_generate_password(vim.eval('a:size'))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

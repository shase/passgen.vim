let s:save_cpo = &cpo
set cpo&vim

py3file <sfile>:h:h/passgen.py
python3 import vim

function! passgen#passgen(size)
  python3 passgenvim_generate_password(vim.eval('a:sizse'))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

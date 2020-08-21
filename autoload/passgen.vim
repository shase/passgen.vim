let s:save_cpo = &cpo
set cpo&vim

pyfile <sfile>:h:h/passgen.py
python import vim

function! passgen#generate_password(size)
  python3 passgenvim_generate_password(vim.eval('a:sizse'))
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

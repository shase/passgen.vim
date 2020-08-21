let s:save_cpo = &cpo
set cpo&vim

command! -nargs=1 PASSGEN call passgen#generate_password(<f-args>)

let &cpo = s:save_cpo
unlet s:save_cpo

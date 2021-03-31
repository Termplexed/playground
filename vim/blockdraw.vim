"  ╔═══════════════════╗
"  ║ ┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬ ║
"  ║ │││││││││││││││││ ║
"  ║    REACTOR ONE    ║
"  ║ ╔═══╦══╦══╦══╦══╦═╝
"  ║ ║   │  │  │  │  │
"  ║ ║   :  :  :  :  :
"  ║ ║   .  .  .  .  .
"  ║ ║
"  ║ ║   .        .
"  ║ ║      .        .
"  ║ ║         .
"  ╚═╩═╩═╩═╩═╩═╩═╩═╝ .
if exists('g:Deblog2')
	for c in g:Deblog2.boot() | exe c | endfor
endif
if exists('s:buf') " Reset in case of reload of script
	call s:end_kdraw()
else
	let s:buf_help = -1
endif
" ┌──────┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
" │ U+25 │ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ A │ B │ C │ D │ E │ F │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    0 │ ─ │ ━ │ │ │ ┃ │ ┄ │ ┅ │ ┆ │ ┇ │ ┈ │ ┉ │ ┊ │ ┋ │ ┌ │ ┍ │ ┎ │ ┏ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    1 │ ┐ │ ┑ │ ┒ │ ┓ │ └ │ ┕ │ ┖ │ ┗ │ ┘ │ ┙ │ ┚ │ ┛ │ ├ │ ┝ │ ┞ │ ┟ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    2 │ ┠ │ ┡ │ ┢ │ ┣ │ ┤ │ ┥ │ ┦ │ ┧ │ ┨ │ ┩ │ ┪ │ ┫ │ ┬ │ ┭ │ ┮ │ ┯ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    3 │ ┰ │ ┱ │ ┲ │ ┳ │ ┴ │ ┵ │ ┶ │ ┷ │ ┸ │ ┹ │ ┺ │ ┻ │ ┼ │ ┽ │ ┾ │ ┿ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    4 │ ╀ │ ╁ │ ╂ │ ╃ │ ╄ │ ╅ │ ╆ │ ╇ │ ╈ │ ╉ │ ╊ │ ╋ │ ╌ │ ╍ │ ╎ │ ╏ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    5 │ ═ │ ║ │ ╒ │ ╓ │ ╔ │ ╕ │ ╖ │ ╗ │ ╘ │ ╙ │ ╚ │ ╛ │ ╜ │ ╝ │ ╞ │ ╟ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    6 │ ╠ │ ╡ │ ╢ │ ╣ │ ╤ │ ╥ │ ╦ │ ╧ │ ╨ │ ╩ │ ╪ │ ╫ │ ╬ │ ╭ │ ╮ │ ╯ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    7 │ ╰ │ ╱ │ ╲ │ ╳ │ ╴ │ ╵ │ ╶ │ ╷ │ ╸ │ ╹ │ ╺ │ ╻ │ ╼ │ ╽ │ ╾ │ ╿ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" └──────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
" ┌──────┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
" │ U+25 │ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ A │ B │ C │ D │ E │ F │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    0 │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    1 │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    2 │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    3 │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    4 │   │   │   │   │   │ ╅ │ ╆ │ ╇ │ ╈ │ ╉ │ ╊ │   │   │   │   │   │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    5 │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    6 │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" │    7 │   │   │   │   │   │   │   │   │ ╸ │ ╹ │ ╺ │ ╻ │ ╼ │ ╽ │ ╾ │ ╿ │
" │      │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
" └──────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘

" ┞ ┦ ┡ ┩ ╀ ┟ ┧ ╁ ┢ ┪
" cc
" ┭ ┮ ┱ ┲ ┵ ┶ ┹ ┺
" cc
" ┽ ┾ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊
" cc
" ╽ ╿ ╸ ╹ ╺ ╻ ╼ ╾
" cc

let s:map = [ ]
" 0 Thin
" 1 Double
" 2 Transition Thin V -> Double H
" 3 Transition Thin H -> Double V
" 4 Fat
" 5 Transition Thin V -> Fat H
" 6 Transition Thin H -> Fat V
let s:map_d = [  '7',  '8',  '9',  '4',  '5',  '6',  '1',  '2',  '3',  ',', '-', '+'] " , '*', '0', '/']
let s:map_alias = [['∕', ','], ['\|', ',']]
let s:map += [[ '0c', '2c', '10', '1c', '3c', '24', '14', '34', '18', '02', '00'  ]]
let s:map += [[ '54', '66', '57', '60', '6c', '63', '5a', '69', '5d', '51', '50'  ]]
let s:map += [[ '52', '64', '55', '5e', '6a', '61', '58', '67', '5b', '02', '50'  ]]
let s:map += [[ '53', '65', '56', '5f', '6b', '62', '59', '68', '5c', '51', '00'  ]]
let s:map += [[ '0f', '33', '13', '23', '4b', '2b', '17', '3b', '1b', '03', '01'  ]]
let s:map += [[ '0d', '2f', '11', '1d', '3f', '25', '15', '37', '19', '02', '01'  ]]
let s:map += [[ '0e', '30', '12', '20', '42', '28', '16', '38', '1a', '03', '00'  ]]

let s:map += [[ '6d', '74', '6e', '72', '73', '71', '70', '75', '6f', '77', '76'  ]]
let s:map += [[ '04', '05', '08', '09', '4c', '4d', '4e', '06', '0a', '4f', '07', '0b' ]]
let s:map += [[ '2e', '21', '26', '29', '40', '41', '1f', '22', '27', '2a']]
let s:map += [[ '2d', '31', '32', '35', '36', '39', '3a', '3d', '3e', '43', '44']]
let s:map += [[ '45', '46', '47', '48', '49', '4a', '7c', '7d', '7e', '7f']]
let s:map += [[ '78', '79', '7a', '7b']]

let s:map_c  = [  'q', 'z', 'x', 'w', 'e', 'r', 'R', 't', 'a', 'A', 's', 'S', 'd', 'D', 'f', 'F' ]
let s:buf = { }
let s:help_size = 14

fun! s:exec_noev(cmd)
	let old_eventignore = &eventignore
	set eventignore=all
	call execute(a:cmd)
	let &eventignore = old_eventignore
endfun
fun! s:focus_help()
	let iam = bufwinid(s:buf_help)
	call win_gotoid(iam)
endfun
function! s:help_write(...) abort
	let w_old = win_getid()

	let b = bufnr('%')
	let c = has_key(s:buf, b) ? s:buf[b].map_draw_i : ' '
	let buf = [' ┌───────┐',
	\  printf( ' │ MAP%2d │', c),
		\  ' ├───┬───┤' ]
	for k in s:map_d
		let m = maparg(k, 'i', 0, 1)
		if has_key(m, 'rhs')
			let buf += [ printf(
				\ ' │ %s │ %s │', k, m.rhs),
				\ ' │   │   │']
		endif
	endfor

	let buf += [' ├───┴───┴──┐',
		\   ' │   NAV    │',
		\   ' ├───┬──────┤',
		\   ' │ x │ next │',
		\   ' │   │ map  │',
		\   ' │ z │ prev │',
		\   ' │ w │ ─    │',
		\   ' │ e │ ═    │',
		\   ' │ r │ ╧    │',
		\   ' │ R │ ╨    │',
		\   ' │ t │ ━    │',
		\   ' │ a │ ┷    │',
		\   ' │ A │ ┸    │',
		\   ' │ s │ ╳    │',
		\   ' │ S │ ╍    │',
		\   ' │ d │ ┢    │',
		\   ' │ D │ ┲    │',
		\   ' │ f │ ╇    │',
		\   ' │ F │ ╺    │',
		\   ' │ q │  end │',
		\   ' └───┴──────┘'
		\ ]

	let hor = a:0 != 0 && a:1 && a:1 != 'v'
	let szf = hor ? 'winfixheight' : 'winfixwidth'
	let ex = ''
	if s:buf_help == -1
		LLOG "NEW HELP"
		if hor
			let ex = 'keepalt ' . s:help_size . 'new'
		else
			let ex = 'keepalt vertical ' . s:help_size . 'new'
		endif
		call s:exec_noev(ex)
		setlocal buftype=nofile
		setlocal bufhidden=delete
		setlocal nobuflisted
		setlocal noswapfile
		setlocal nonumber
		setlocal linespace=0
		setlocal foldcolumn=0
		setlocal nowrap
		setlocal nospell
		let s:buf_help = bufnr('%')
	else
		if bufwinid(s:buf_help) < 0
			let v = hor ? 'split' : 'vsplit'
			call s:exec_noev('keepalt ' . s:help_size . v . ' +b' . s:buf_help)
		else
			call s:focus_help()
		endif
	endif
	call execute('set ' . szf . ' concealcursor=n')
	call deletebufline(bufname(s:buf_help), 1, '$')
	call setbufline(bufname(s:buf_help), 1, buf)
	call win_gotoid(w_old)
endfunction
fun! s:set_kmap_ctrl(m)
	for k in s:map_alias
		DUMP k
		let a:m[k[0]] = maparg(k[0], 'i', 0, 1)
		exec "imap <buffer> " . k[0] . ' ' . k[1]
	endfor
	for k in s:map_c
		let a:m[k] = maparg(k, 'i', 0, 1)
		exec "inoremap <silent> <buffer> " . k . " :call <SID>ev_ctrl('" . k . "')<CR>"
	endfor
	for k in s:map_alias
		DUMP 'exec "imap <buffer> " . ' . k[0] . "' '" . k[1]
		DUMP 'imap <buffer> ' . k[0] . ' ' . k[1]
		let a:m[k[0]] = maparg(k[0], 'i', 0, 1)
		call execute("inoremap <buffer> " . k[0] . ' ' . k[1])
	endfor
endfun
fun! s:ev_ctrl(e)
	if a:e == 'q'
		retur s:end_kdraw()
	else
		call s:set_kmap_draw(a:e)
	endif
endfun
fun! s:start_kdraw() abort
	" Using script local instead of buffer local.
	" Just in case some other plug sets/uses e.g. kmap_ctrl
	" Looks very ugly though
	let b = bufnr('%')
	let s:buf[b] = { }
	let b = s:buf[b]
	let b.kmap_draw = { }
	let b.kmap_ctrl = { }
	let b.ve_save = &ve
	call s:set_kmap_ctrl(b.kmap_ctrl)
	call s:set_kmap_draw('')
	setlocal ve=all
endfun
fun! s:end_kdraw()
	let b = bufnr('%')
	if ! has_key(s:buf, b)
		return
	endif
	let b = s:buf[b]
	call s:unset_kmap(b.kmap_draw)
	call s:unset_kmap(b.kmap_ctrl)
	let b.kmap_draw = { }
	let b.kmap_ctrl = { }
	exec 'setlocal ve=' . b.ve_save
endfun
fun! s:set_kmap_draw(i) abort
	let b = s:buf[bufnr('%')]
	call s:unset_kmap(b.kmap_draw)
	let b.kmap_draw = { }
	if empty(a:i)
		let b.map_draw_i = 0
	else
		let i = index(s:map_c, a:i)
		if     i == 1 | let b.map_draw_i -= 1
		elseif i == 2 | let b.map_draw_i += 1
		else          | let b.map_draw_i = i - 3
		endif
	endif
	if b.map_draw_i > len(s:map) - 1
		let b.map_draw_i = 0
	elseif b.map_draw_i < 0
		let b.map_draw_i = len(s:map) - 1
	endif
	let em = []
	let lhs = s:map_d
	let rhs = s:map[ b.map_draw_i ]
	for i in range(0, len(rhs) - 1)
		let k = lhs[i]
		exe 'let m = "\u25' . rhs[i] . '"'
		let b.kmap_draw[k] = maparg(k, 'i', 0, 1)
		exec 'inoremap <buffer> ' . k . ' ' . m
		let em += [ m ]
	endfor
	call s:help_write()
endfun
fun! s:draw_unmapX(map) " abort
	for k in a:map
		exec 'iunmap <buffer> ' . k
	endfor
endfun
fun! s:unset_kmap(map) "abort
	if !empty(a:map)
		for [k, v] in items(a:map)
			"if has_key(v, 'rhs') && hasmapto(v.rhs, 'i')
			"	LLOG join([k, v.lhs, v.rhs])
			"	exec 'iunmap <buffer> ' . v.lhs
			"endif
			"DUMP v
			silent exec 'iunmap <buffer> ' . k
			if !empty(v)
				" DUMP v
				"call mapset('i', 0, v)
			endif
		endfor
	endif
endfun

command!                 DrawKStart call s:start_kdraw()
command!                 DrawKEnd   call s:end_kdraw()
command! -nargs=?        DrawHelp   call s:help_write(<f-args>)

finish
┌────────┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
│        │ 0 │ 1 │ 2 │ 3 │ 4 │ 5 │ 6 │ 7 │ 8 │ 9 │ A │ B │ C │ D │ E │ F │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
│ U+250x │ ─ │ ━ │ │ │ ┃ │ ┄ │ ┅ │ ┆ │ ┇ │ ┈ │ ┉ │ ┊ │ ┋ │ ┌ │ ┍ │ ┎ │ ┏ │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
│ U+251x │ ┐ │ ┑ │ ┒ │ ┓ │ └ │ ┕ │ ┖ │ ┗ │ ┘ │ ┙ │ ┚ │ ┛ │ ├ │ ┝ │ ┞ │ ┟ │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
│ U+252x │ ┠ │ ┡ │ ┢ │ ┣ │ ┤ │ ┥ │ ┦ │ ┧ │ ┨ │ ┩ │ ┪ │ ┫ │ ┬ │ ┭ │ ┮ │ ┯ │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
│ U+253x │ ┰ │ ┱ │ ┲ │ ┳ │ ┴ │ ┵ │ ┶ │ ┷ │ ┸ │ ┹ │ ┺ │ ┻ │ ┼ │ ┽ │ ┾ │ ┿ │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
│ U+254x │ ╀ │ ╁ │ ╂ │ ╃ │ ╄ │ ╅ │ ╆ │ ╇ │ ╈ │ ╉ │ ╊ │ ╋ │ ╌ │ ╍ │ ╎ │ ╏ │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
│ U+255x │ ═ │ ║ │ ╒ │ ╓ │ ╔ │ ╕ │ ╖ │ ╗ │ ╘ │ ╙ │ ╚ │ ╛ │ ╜ │ ╝ │ ╞ │ ╟ │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
│ U+256x │ ╠ │ ╡ │ ╢ │ ╣ │ ╤ │ ╥ │ ╦ │ ╧ │ ╨ │ ╩ │ ╪ │ ╫ │ ╬ │ ╭ │ ╮ │ ╯ │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
│ U+257x │ ╰ │ ╱ │ ╲ │ ╳ │ ╴ │ ╵ │ ╶ │ ╷ │ ╸ │ ╹ │ ╺ │ ╻ │ ╼ │ ╽ │ ╾ │ ╿ │
│        │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │   │
└────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘

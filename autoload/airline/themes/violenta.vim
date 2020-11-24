" Normal mode
let s:N1 = [ '#EEEEEE' , '#402D34' , 255 , 240  ] " guifg guibg ctermfg ctermbg
let s:N2 = [ '#EEEEEE' , '#805B69' , 255 , 235  ] " guifg guibg ctermfg ctermbg
let s:N3 = [ '#402D34' , '#BF889D' , 250 , 235  ] " guifg guibg ctermfg ctermbg

" Insert mode
let s:I1 = [ '#EEEEEE' , '#FF69A2' , 255 , 43   ] " guifg guibg ctermfg ctermbg
let s:I2 = [ '#EEEEEE' , '#805B69' , 255 , 235  ] " guifg guibg ctermfg ctermbg
let s:I3 = [ '#402D34' , '#BF889D' , 250 , 235  ] " guifg guibg ctermfg ctermbg

" Visual mode
let s:V1 = [ '#EEEEEE' , '#B36D88' , 255 , 172  ] " guifg guibg ctermfg ctermbg
let s:V2 = [ '#EEEEEE' , '#805B69' , 255 , 235  ] " guifg guibg ctermfg ctermbg
let s:V3 = [ '#402D34' , '#BF889D' , 250 , 235  ] " guifg guibg ctermfg ctermbg

" Replace mode
let s:RE = [ '#EEEEEE' , '#FF3333' , 255  , 202 ] " guifg guibg ctermfg ctermbg

"modified color
let s:modified  = [22, '#005F00']

let g:airline#themes#violenta#palette = {}

let g:airline#themes#violenta#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#violenta#palette.normal_modified = {
    \ 'airline_a': ['', s:modified[1], '', s:modified[0], ''],
    \ 'airline_c': [s:modified[1], '', s:modified[0], '', ''],
    \ 'airline_x': [s:modified[1], '', s:modified[0], '', ''],
    \ 'airline_z': ['', s:modified[1], '', s:modified[0], '']}

let g:airline#themes#violenta#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#violenta#palette.insert_replace = {
            \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#violenta#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#violenta#palette.replace = copy(g:airline#themes#violenta#palette.normal)
let g:airline#themes#violenta#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#violenta#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

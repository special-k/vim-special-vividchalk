" Vim color scheme
" Name:         special-vividchalk.vim
" Author:       Kirill Jakovlev <special-k@li.ru>

" Based on the vividchalk theme by Tim Pope
" Distributable under the same terms as Vim itself (see :help license)

if has("gui_running")
    set background=dark
endif
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "special-vividchalk"

"Rails
"----------------------------------------
hi link railsMethod         PreProc

"Ruby
"----------------------------------------
hi link rubyDefine          Keyword
hi link rubySymbol          Constant
hi link rubyAccess          rubyMethod
hi link rubyAttribute       rubyMethod
hi link rubyEval            rubyMethod
hi link rubyException       rubyMethod
hi link rubyInclude         rubyMethod
hi link rubyStringDelimiter rubyString
hi link rubyRegexp          Regexp
hi link rubyRegexpDelimiter rubyRegexp
"hi link rubyConstant        Variable
"hi link rubyGlobalVariable  Variable
"hi link rubyClassVariable   Variable
"hi link rubyInstanceVariable Variable

"JavaScript
"----------------------------------------
hi link javaScript              Normal
"hi link javaScriptBraces        Normal
hi link javascriptRegexpString  Regexp
hi link javascriptNumber        Number
hi link javascriptNull          Constant

"Diff
"----------------------------------------
hi link diffAdded        String
hi link diffRemoved      Statement
hi link diffLine         PreProc
hi link diffSubname      Comment

"Html
"----------------------------------------
hi htmlTag guifg=#ffffaa ctermfg=229
hi htmlBold gui=bold
hi htmlEndTag guifg=#ffffaa ctermfg=229
hi htmlTitle gui=bold guifg=#ffffaa ctermfg=229
hi htmlLink guifg=#0077ff ctermfg=32
hi link htmlH1           htmlTitle

"Common
"----------------------------------------
hi Normal                   guifg=#aaffff   guibg=#000911                 ctermfg=159   ctermbg=8
hi StatusLine               guifg=#000911   guibg=White     gui=bold      ctermfg=8     ctermbg=15    cterm=bold
hi StatusLineNC             guifg=Black     guibg=Gray26    gui=none      ctermfg=8     ctermbg=242   cterm=none

hi SpellBad   guisp=red     guifg=NONE      guibg=NONE      gui=undercurl ctermfg=NONE  ctermbg=52    cterm=underline term=underline 
hi SpellCap   guisp=yellow  guifg=NONE      guibg=NONE      gui=undercurl ctermfg=NONE  ctermbg=52    cterm=underline term=underline 
hi SpellRare  guisp=blue    guifg=NONE      guibg=NONE      gui=undercurl ctermfg=NONE  ctermbg=52    cterm=underline term=underline 
hi SpellLocal guisp=orange  guifg=NONE      guibg=NONE      gui=undercurl ctermfg=NONE  ctermbg=52    cterm=underline term=underline 

hi Ignore                                                                 ctermfg=8
hi WildMenu                 guifg=Black     guibg=#ffff00   gui=bold      ctermfg=8     ctermbg=226   cterm=bold
hi Cursor                   guifg=Black     guibg=White                   ctermfg=8     ctermbg=15
hi CursorLine               guifg=NONE      guibg=#333333                 ctermfg=NONE  ctermbg=236
hi CursorColumn             guifg=NONE      guibg=#333333                 ctermfg=NONE  ctermbg=236
hi NonText                  guifg=#003366                                 ctermfg=17
hi SpecialKey               guifg=#003366                                 ctermfg=17

hi Directory     none
high link Directory     Identifier

hi ErrorMsg                 guifg=Black     guibg=#ff6666                 ctermfg=8     ctermbg=203
hi Search                   guifg=NONE      guibg=#004499   gui=none      ctermfg=NONE  ctermbg=18    cterm=none
hi IncSearch                guifg=White     guibg=Black                   ctermfg=15    ctermbg=8
hi MoreMsg                  guifg=#00ddff                                 ctermfg=45
hi LineNr                   guifg=#DDEEFF   guibg=#222222                 ctermfg=194   ctermbg=234
hi Question      none
high link Question      MoreMsg

hi Title                    guifg=Magenta                                 ctermfg=Magenta
hi Visual                   guifg=Black     guibg=#aaffff                 ctermfg=8     ctermbg=159
hi VisualNOS                                guibg=#444444   gui=none                    ctermbg=238   cterm=none
hi MatchParen                               guibg=#0000aa                               ctermbg=19
hi WarningMsg               guifg=#ff6666                                 ctermfg=203
hi Error                                    guibg=#ff6666                               ctermbg=203
hi vimTodo                  guifg=#000911   guibg=#eeee00   gui=bold      ctermfg=17    ctermbg=184   cterm=bold
" FIXME: Comments
"hi SpellRare     ctermbg=DarkMagenta
"hi SpellCap      ctermbg=DarkBlue
"hi SpellLocal    ctermbg=DarkCyan
hi VertSplit                guifg=Black     guibg=Gray26    gui=bold      ctermfg=8     ctermbg=238   cterm=bold

hi Folded        ctermbg=17 guibg=#110077 guifg=#aaddee ctermfg=153
hi FoldColumn    none
high link FoldColumn    Folded

"Diff
hi DiffAdd       ctermbg=4 guibg=DarkBlue
hi DiffChange    ctermbg=5 guibg=DarkMagenta
hi DiffDelete    ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan cterm=bold
hi DiffText      ctermbg=DarkRed
hi DiffText      cterm=bold ctermbg=9 gui=bold guibg=#ff6666

"hi Pmenu         guifg=NONE ctermfg=NONE cterm=bold gui=bold
"hi PmenuSel      guifg=#222222 ctermfg=234 gui=bold cterm=bold
hi Pmenu      guibg=#003366 ctermbg=17 guifg=NONE ctermfg=NONE cterm=bold gui=bold
hi PmenuSel      guibg=#ddff00 ctermbg=190 guifg=#222222 ctermfg=234 gui=bold cterm=bold
hi PmenuSbar     guibg=#003366 ctermbg=17
hi PmenuThumb    guifg=#aaffff guibg=White ctermbg=15 ctermfg=159
"hi TabLine       gui=underline cterm=underline
"call s:hifg("TabLine"   ,"#bbbbbb","LightGrey",85)
"call s:hibg("TabLine"   ,"#333333","DarkGrey",80)
hi TabLine        guifg=#bbbbbb ctermfg=250 guibg=#333333 ctermbg=236 gui=underline cterm=underline
hi TabLineSel    guifg=White guibg=Black ctermfg=15 ctermbg=8
"hi TabLineFill   gui=underline cterm=underline
"call s:hifg("TabLineFill","#bbbbbb","LightGrey",85)
"call s:hibg("TabLineFill","#808080","Grey",83)
hi TabLineFill    guifg=#bbbbbb ctermfg=250 guibg=#808080 ctermbg=44 gui=underline cterm=underline

"hi Type gui=none
"hi Statement gui=none
if !has("gui_mac")
    " Mac GUI degrades italics to ugly underlining.
    hi Comment gui=italic
    hi railsUserClass  gui=italic
    hi railsUserMethod gui=italic
endif
"hi Identifier cterm=none
" Commented numbers at the end are *old* 256 color values
"hi PreProc       guifg=#EDF8F9
"call s:hifg("Comment"        ,"#6666bb",61,34) " 92*
" 26 instead?
hi Comment guifg=#6666bb ctermfg=61
"call s:hifg("Constant"       ,"#bbff66","DarkCyan",21) " 30*
hi Constant guifg=#bbff66 ctermfg=155
"call s:hifg("rubyNumber"     ,"#CCFF33","Yellow",60) " 190*
hi rubyNumber guifg=#CCFF33 ctermfg=154
"call s:hifg("String"         ,"#00bb66","LightGreen",44,82) " 82*
hi String guifg=#00bb66 ctermfg=35
"call s:hifg("Identifier"     ,"#eeee00","Yellow",72) " 220*
hi Identifier guifg=#eeee00 ctermfg=184 cterm=none gui=none
"call s:hifg("Statement"      ,"#00ddff","Brown",68) " 202*
hi Statement guifg=#00ddff ctermfg=45 gui=bold cterm=bold
"call s:hifg("PreProc"        ,"#ffffaa","LightCyan",48) " 213*
hi PreProc guifg=#ffffaa ctermfg=229
"call s:hifg("railsUserMethod","#AACCFF","LightCyan",27)
hi railsUserMethod guifg=#AACCFF ctermfg=152
"call s:hifg("Type"           ,"White","Grey",57) " 101*
hi Type guifg=White ctermfg=15 gui=bold cterm=bold
"call s:hifg("railsUserClass" ,"#AAAAAA","Grey",7) " 101
hi railsUserClass guifg=#AAAAAA ctermfg=248
"call s:hifg("Special"        ,"#FF6666","DarkGreen",24) " 7
hi Special guifg=#ff6666 ctermfg=203
"call s:hifg("Regexp"         ,"#44B4CC","DarkCyan",21) " 74
hi Regexp guifg=#44b4cc ctermfg=74
"call s:hifg("rubyMethod"     ,"#00ddff","Yellow",77) " 191*
hi rubyMethod guifg=#00ddff ctermfg=45
"hi railsMethod   guifg=#EE1122 ctermfg=1

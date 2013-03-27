" kantan vim theme
" Derived from https://github.com/chriskempson/base16-builder/blob/master/templates/vim/vim.erb

" Colours for gvim
let s:gui00 = "${hex[0]}"
let s:gui01 = "${hex[1]}"
let s:gui02 = "${hex[2]}"
let s:gui03 = "${hex[3]}"
let s:gui04 = "${hex[4]}"
let s:gui05 = "${hex[5]}"
let s:gui06 = "${hex[6]}"
let s:gui07 = "${hex[7]}"
let s:gui08 = "${hex[8]}"
let s:gui09 = "${hex[9]}"
let s:gui10 = "${hex[10]}"
let s:gui11 = "${hex[11]}"
let s:gui12 = "${hex[12]}"
let s:gui13 = "${hex[13]}"
let s:gui14 = "${hex[14]}"
let s:gui15 = "${hex[15]}"
let s:gui16 = "${hex[16]}"

" Theme Setup
hi clear
syntax reset
let g:colors_name = "kantan"

" Highlighting function
fun! <SID>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Vim Editor Colors
call <SID>hi("Bold",          "", "", "", "", "bold")
call <SID>hi("Debug",         s:gui09, "", "09", "", "")
call <SID>hi("Directory",     s:gui12, "", "12", "", "")
call <SID>hi("ErrorMsg",      s:gui09, s:gui00, "09", "00", "")
call <SID>hi("Exception",     s:gui09, "", "09", "", "")
call <SID>hi("FoldColumn",    "", s:gui00, "", "00", "")
call <SID>hi("Folded",        s:gui08, s:gui00, "08", "00", "")
call <SID>hi("IncSearch",     s:gui11, "", "11", "", "")
call <SID>hi("Italic",        "", "", "", "", "none")
call <SID>hi("Macro",         s:gui09, "", "09", "", "")
call <SID>hi("MatchParen",    s:gui08, s:gui00, "08", "00",  "reverse")
call <SID>hi("ModeMsg",       s:gui10, "", "10", "", "")
call <SID>hi("MoreMsg",       s:gui10, "", "10", "", "")
call <SID>hi("Question",      s:gui11, "", "11", "", "")
call <SID>hi("Search",        s:gui11, s:gui00, "11", "00",  "reverse")
call <SID>hi("SpecialKey",    s:gui08, "", "08", "", "")
call <SID>hi("Title",         s:gui07, s:gui00, "07", "00", "reverse")
call <SID>hi("TooLong",       s:gui09, "", "09", "", "")
call <SID>hi("Underlined",    s:gui09, "", "09", "", "")
call <SID>hi("Visual",        "", s:gui08, "", "08", "")
call <SID>hi("VisualNOS",     s:gui09, "", "09", "", "")
call <SID>hi("WarningMsg",    s:gui09, "", "09", "", "")
call <SID>hi("WildMenu",      s:gui09, "", "09", "", "")

if &background == "dark"
  call <SID>hi("Cursor",        s:gui00, s:gui07, "00", "07", "")
  call <SID>hi("NonText",       s:gui08, "", "08", "", "")
  call <SID>hi("Normal",        s:gui07, s:gui16, "07", "none", "")
  call <SID>hi("LineNr",        s:gui08, s:gui00, "08", "00", "")
  call <SID>hi("SpecialKey",    s:gui08, "", "08", "", "")
  call <SID>hi("StatusLine",    s:gui07, s:gui08, "07", "08", "none")
  call <SID>hi("StatusLineNC",  s:gui08, s:gui00, "08", "00", "none")
  call <SID>hi("VertSplit",     s:gui08, s:gui08, "08", "08", "none")
  call <SID>hi("ColorColumn",  "", s:gui00, "", "00", "none")
  call <SID>hi("CursorColumn",  "", s:gui00, "", "00", "none")
  call <SID>hi("CursorLine",    "", s:gui00, "", "00", "none")
  call <SID>hi("CursorLineNr",  s:gui08, s:gui07, "07", "08", "")
  call <SID>hi("PMenu",         s:gui07, s:gui00, "07", "00", "none")
  call <SID>hi("PMenuSel",      s:gui07, s:gui00, "07", "00", "reverse")
  call <SID>hi("TabLine",       s:gui07, s:gui00, "07", "00", "reverse")
  call <SID>hi("TabLineFill",   s:gui15, s:gui00, "15", "00", "reverse")
  call <SID>hi("TabLineSel",    s:gui15, s:gui00, "15", "00", "reverse")
  call <SID>hi("DiffAdd",       s:gui10, s:gui00, "10", "00", "")
  call <SID>hi("DiffChange",    s:gui07, s:gui00, "07", "00", "")
  call <SID>hi("DiffDelete",    s:gui09, s:gui00, "09", "00", "")
  call <SID>hi("DiffText",      s:gui12, s:gui00, "12", "00", "")
else
  call <SID>hi("Cursor",        s:gui00, s:gui08, "00", "08", "")
  call <SID>hi("NonText",       s:gui07, "", "07", "", "")
  call <SID>hi("Normal",        s:gui08, s:gui15, "08", "none", "")
  call <SID>hi("LineNr",        s:gui07, s:gui15, "07", "15", "")
  call <SID>hi("SpecialKey",    s:gui07, "", "07", "", "")
  call <SID>hi("StatusLine",    s:gui07, s:gui15, "07", "15", "none")
  call <SID>hi("StatusLineNC",  s:gui07, s:gui15, "07", "15", "none")
  call <SID>hi("VertSplit",     s:gui07, s:gui07, "07", "07", "none")
  call <SID>hi("CursorColumn",  "", s:gui15, "", "15", "none")
  call <SID>hi("CursorLine",    "", s:gui15, "", "15", "none")
  call <SID>hi("CursorLineNr",  s:gui07, s:gui15, "07", "15", "")
  call <SID>hi("PMenu",         s:gui07, s:gui08, "07", "08", "none")
  call <SID>hi("PMenuSel",      s:gui07, s:gui08, "07", "08", "reverse")
  call <SID>hi("TabLine",       s:gui07, s:gui00, "07", "00", "reverse")
  call <SID>hi("TabLineFill",   s:gui15, s:gui00, "15", "00", "reverse")
  call <SID>hi("TabLineSel",    s:gui15, s:gui00, "15", "00", "reverse")
  call <SID>hi("DiffAdd",       s:gui10, s:gui03, "10", "03", "")
  call <SID>hi("DiffChange",    s:gui07, s:gui03, "07", "03", "")
  call <SID>hi("DiffDelete",    s:gui09, s:gui03, "09", "03", "")
  call <SID>hi("DiffText",      s:gui12, s:gui03, "12", "03", "")
endif

" Standard Syntax Highlighting
call <SID>hi("Boolean",      s:gui03, "", "03", "", "")
call <SID>hi("Character",    s:gui09, "", "09", "", "")
call <SID>hi("Comment",      s:gui08, "", "08", "", "")
call <SID>hi("Conditional",  s:gui13, "", "13", "", "")
call <SID>hi("Constant",     s:gui03, "", "03", "", "")
call <SID>hi("Define",       s:gui13, "", "13", "", "none")
call <SID>hi("Delimiter",    s:gui03, "", "03", "", "")
call <SID>hi("Float",        s:gui03, "", "03", "", "")
call <SID>hi("Function",     s:gui12, "", "12", "", "")
call <SID>hi("Identifier",   s:gui09, "", "09", "", "none")
call <SID>hi("Include",      s:gui12, "", "12", "", "")
call <SID>hi("Keyword",      s:gui13, "", "13", "", "")
call <SID>hi("Label",        s:gui11, "", "11", "", "")
call <SID>hi("Number",       s:gui03, "", "03", "", "")
call <SID>hi("Operator",     s:gui07, "", "07", "", "none")
call <SID>hi("PreProc",      s:gui11, "", "11", "", "")
call <SID>hi("Repeat",       s:gui11, "", "11", "", "")
call <SID>hi("Special",      s:gui14, "", "14", "", "")
call <SID>hi("SpecialChar",  s:gui03, "", "03", "", "")
call <SID>hi("Statement",    s:gui09, "", "09", "", "")
call <SID>hi("StorageClass", s:gui11, "", "11", "", "")
call <SID>hi("String",       s:gui10, "", "10", "", "")
call <SID>hi("Structure",    s:gui13, "", "13", "", "")
call <SID>hi("Tag",          s:gui11, "", "11", "", "")
call <SID>hi("Title",        s:gui12, s:gui00, "12", "00", "none")
call <SID>hi("Todo",         s:gui11, s:gui00, "11", "00", "")
call <SID>hi("Type",         s:gui03, "", "03", "", "none")
call <SID>hi("Typedef",      s:gui11, "", "11", "", "")

" Spelling Highlighting
call <SID>hi("SpellBad",     s:gui07, s:gui00, "07", "09", "")
call <SID>hi("SpellLocal",   s:gui07, s:gui00, "07", "12", "")
"call <SID>hi("SpellCap",    s:gui00, s:gui09, "00", "09", "")
"call <SID>hi("SpellRare",   s:gui00, s:gui09, "00", "09", "")

" Additional Diff Highlighting
call <SID>hi("DiffAdded",    s:gui10, "", "10", "", "")
call <SID>hi("DiffFile",     s:gui09, "", "09", "", "")
call <SID>hi("DiffNewFile",  s:gui10, "", "10", "", "")
call <SID>hi("DiffLine",     s:gui12, "", "12", "", "")
call <SID>hi("DiffRemoved",  s:gui09, "", "09", "", "")

" Ruby Highlighting
call <SID>hi("rubyAttribute",               s:gui12, "", "12", "", "")
call <SID>hi("rubyConstant",                s:gui11, "", "11", "", "")
call <SID>hi("rubyInterpolation",           s:gui10, "", "10", "", "")
call <SID>hi("rubyInterpolationDelimiter",  s:gui03, "", "03", "", "")
call <SID>hi("rubyRegexp",                  s:gui14, "", "14", "", "")
call <SID>hi("rubySymbol",                  s:gui10, "", "10", "", "")
call <SID>hi("rubyStringDelimiter",         s:gui10, "", "10", "", "")

" PHP Highlighting
call <SID>hi("phpMemberSelector",  s:gui07, "", "07", "", "")
call <SID>hi("phpComparison",      s:gui07, "", "07", "", "")
call <SID>hi("phpParent",          s:gui07, "", "07", "", "")

" HTML Highlighting
call <SID>hi("htmlBold",    s:gui11, "", "11", "", "")
call <SID>hi("htmlItalic",  s:gui13, "", "13", "", "")
call <SID>hi("htmlEndTag",  s:gui07, "", "07", "", "")
call <SID>hi("htmlTag",     s:gui07, "", "07", "", "")

" CSS Highlighting
call <SID>hi("cssBraces",      s:gui07, "", "07", "", "")
call <SID>hi("cssClassName",   s:gui13, "", "13", "", "")
call <SID>hi("cssColor",       s:gui14, "", "14", "", "")

" SASS Highlighting
call <SID>hi("sassIdChar",     s:gui09, "", "09", "", "")
call <SID>hi("sassClassChar",  s:gui03, "", "03", "", "")
call <SID>hi("sassInclude",    s:gui13, "", "13", "", "")
call <SID>hi("sassMixing",     s:gui13, "", "13", "", "")
call <SID>hi("sassMixinName",  s:gui12, "", "12", "", "")

" JavaScript Highlighting
call <SID>hi("javaScript",        s:gui07, "", "07", "", "")
call <SID>hi("javaScriptBraces",  s:gui07, "", "07", "", "")
call <SID>hi("javaScriptNumber",  s:gui03, "", "03", "", "")

" Markdown Highlighting
call <SID>hi("markdownCode",              s:gui10, "", "10", "", "")
call <SID>hi("markdownCodeBlock",         s:gui10, "", "10", "", "")
call <SID>hi("markdownHeadingDelimiter",  s:gui12, "", "12", "", "")

" Git Highlighting
call <SID>hi("gitCommitOverflow",  s:gui09, "", "09", "", "")
call <SID>hi("gitCommitSummary",   s:gui10, "", "10", "", "")

" Remove Highlighting Function
delf <SID>hi

" Remove Colour Variables
unlet s:gui00 s:gui01 s:gui02 s:gui03 s:gui04 s:gui05 s:gui06 s:gui07 s:gui08 s:gui09 s:gui10 s:gui11 s:gui12 s:gui13 s:gui14 s:gui15

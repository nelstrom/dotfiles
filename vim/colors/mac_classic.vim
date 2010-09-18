" Vim color file
" Converted from Textmate theme Mac Classic using Coloration v0.2.2 (http://github.com/sickill/coloration)

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Mac Classic"

hi Cursor  guifg=NONE guibg=#000000 gui=NONE
hi Visual  guifg=NONE guibg=#ffce77 gui=NONE
hi CursorLine  guifg=NONE guibg=#ededed gui=NONE
hi CursorColumn  guifg=NONE guibg=#ededed gui=NONE
hi LineNr  guifg=#808080 guibg=#efefef gui=NONE
hi VertSplit  guifg=#cfcfcf guibg=#cfcfcf gui=NONE
hi MatchParen  guifg=#0000ff guibg=NONE gui=bold
hi StatusLine  guifg=#000000 guibg=#e3ecfc gui=NONE
hi StatusLineNC  guifg=#000000 guibg=#efefef gui=NONE
hi Pmenu  guifg=NONE guibg=NONE gui=NONE
hi PmenuSel  guifg=NONE guibg=#c6deff gui=NONE
hi IncSearch  guifg=NONE guibg=#ababff gui=NONE
hi Search  guifg=NONE guibg=#ababff gui=NONE
hi Directory  guifg=#d51015 guibg=NONE gui=bold
hi Folded  guifg=#0066ff guibg=#ffffff gui=NONE

hi Normal  guifg=#000000 guibg=#ffffff gui=NONE
hi Boolean  guifg=#585cf6 guibg=NONE gui=bold
hi Character  guifg=#d51015 guibg=NONE gui=bold
hi Comment  guifg=#0066ff guibg=NONE gui=italic
hi Conditional  guifg=#0000ff guibg=NONE gui=bold
hi Constant  guifg=#d51015 guibg=NONE gui=bold
hi Define  guifg=#0000ff guibg=NONE gui=bold
hi ErrorMsg  guifg=#ffffff guibg=#990000 gui=NONE
hi WarningMsg  guifg=#ffffff guibg=#990000 gui=NONE
hi Float  guifg=#0000cd guibg=NONE gui=NONE
hi Function  guifg=#0000a2 guibg=NONE gui=bold
hi Identifier  guifg=#0000ff guibg=NONE gui=bold
hi Keyword  guifg=#0000ff guibg=NONE gui=bold
hi Label  guifg=#036a07 guibg=NONE gui=NONE
hi NonText  guifg=#dfdfdf guibg=#ffffff gui=NONE
hi Number  guifg=#0000cd guibg=NONE gui=NONE
hi Operator  guifg=#0000ff guibg=NONE gui=bold
hi PreProc  guifg=#0000ff guibg=NONE gui=bold
hi Special  guifg=#000000 guibg=NONE gui=NONE
hi SpecialKey  guifg=#bfbfbf guibg=#ededed gui=NONE
hi Statement  guifg=#0000ff guibg=NONE gui=bold
hi StorageClass  guifg=#0000ff guibg=NONE gui=bold
hi String  guifg=#036a07 guibg=NONE gui=NONE
hi Tag  guifg=NONE guibg=NONE gui=NONE
hi Title  guifg=#000000 guibg=NONE gui=bold
hi Todo  guifg=#0066ff guibg=NONE gui=inverse,bold,italic
hi Type  guifg=NONE guibg=NONE gui=NONE
hi Underlined  guifg=NONE guibg=NONE gui=underline
hi rubyClass  guifg=#0000ff guibg=NONE gui=bold
hi rubyFunction  guifg=#0000a2 guibg=NONE gui=bold
hi rubyInterpolationDelimiter  guifg=#00bc41 guibg=NONE gui=NONE
hi rubyInterpolation  guifg=#00bc41 guibg=NONE gui=NONE
hi rubySymbol  guifg=#d51015 guibg=NONE gui=bold
hi rubyConstant  guifg=#6d79de guibg=NONE gui=bold
hi rubyStringDelimiter  guifg=#036a07 guibg=NONE gui=NONE
hi rubyBlockParameter  guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable  guifg=#318495 guibg=NONE gui=NONE
hi rubyInclude  guifg=#0000ff guibg=NONE gui=bold
hi rubyGlobalVariable  guifg=#318495 guibg=NONE gui=NONE
hi rubyRegexp  guifg=#e18ac7 guibg=NONE gui=NONE
hi rubyRegexpAnchor  guifg=#e18ac7 guibg=NONE gui=NONE
hi rubyRegexpQuantifier  guifg=#e18ac7 guibg=NONE gui=NONE
hi rubyRegexpParens  guifg=#e18ac7 guibg=NONE gui=NONE
hi rubyRegexpEscape  guifg=#00bc41 guibg=NONE gui=NONE
hi rubyRegexpCharClass  guifg=#00bc41 guibg=NONE gui=NONE
hi rubyRegexpDelimiter  guifg=#e18ac7 guibg=NONE gui=NONE
hi rubyEscape  guifg=#26b31a guibg=NONE gui=NONE
hi rubyControl  guifg=#0000ff guibg=NONE gui=bold
hi rubyClassVariable  guifg=NONE guibg=NONE gui=NONE
hi rubyOperator  guifg=#0000ff guibg=NONE gui=bold
hi rubyException  guifg=#0000ff guibg=NONE gui=bold
hi rubyPseudoVariable  guifg=#318495 guibg=NONE gui=NONE
hi rubyRailsUserClass  guifg=#6d79de guibg=NONE gui=bold
hi rubyRailsARAssociationMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi rubyRailsARMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi rubyRailsRenderMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi rubyRailsMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi erubyDelimiter  guifg=NONE guibg=NONE gui=NONE
hi erubyComment  guifg=#0066ff guibg=NONE gui=italic
hi erubyRailsMethod  guifg=#3c4c72 guibg=NONE gui=bold
hi htmlTag  guifg=#1c02ff guibg=NONE gui=NONE
hi htmlEndTag  guifg=#1c02ff guibg=NONE gui=NONE
hi htmlTagName  guifg=#1c02ff guibg=NONE gui=NONE
hi htmlArg  guifg=#1c02ff guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#d51015 guibg=NONE gui=bold
hi javaScriptFunction  guifg=#0000ff guibg=NONE gui=bold
hi javaScriptRailsFunction  guifg=#3c4c72 guibg=NONE gui=bold
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor  guifg=#318495 guibg=NONE gui=NONE
hi yamlAlias  guifg=#318495 guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=NONE guibg=#f2f2f2 gui=NONE
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=#3c4c72 guibg=NONE gui=bold
hi cssColor  guifg=#d51015 guibg=NONE gui=bold
hi cssPseudoClassId  guifg=NONE guibg=NONE gui=NONE
hi cssClassName  guifg=NONE guibg=NONE gui=NONE
hi cssValueLength  guifg=#0000cd guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#06960e guibg=NONE gui=bold
hi cssBraces  guifg=NONE guibg=NONE gui=NONE


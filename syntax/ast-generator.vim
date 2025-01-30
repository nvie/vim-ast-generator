syntax match agComment ,\v//.*$,
" syntax region agComment start=,\v/\*, end=,\v\*/, fold

syntax keyword agKeywords settings
syntax keyword agKeywords semantic
syntax keyword agKeywords method
syntax keyword agKeywords property

syntax match agTypeName /\v<[A-Z][a-zA-Z0-9_]*>/
syntax match agIdentifier /\v<[a-z][a-z0-9_]+>/

" Literals
syntax match agNumber /\v<\d+(_\d+)*>/
syntax region agDoubleQuotedString start=/\v"/ skip=/\v\\./ end=/\v"/ end=/\v$/ oneline

"syntax match agCommonError /\v[!=]\=\zs\=/
"syntax match agCommonError /\v[;]*\s*$/
"syntax match agCommonError /\v<[a-z][A-Za-z0-9_$]*\zs[A-Z][A-Za-z0-9_$]*>/  " unlearn camelCase

" Set highlights
highlight default link agComment Comment
highlight default link agKeywords Keyword
highlight default link agNumber Number
highlight default link agDoubleQuotedString String
highlight default link agTypename Type
"highlight default link agCommonError Error

" Identifiers aren't that nice
" highlight default link agIdentifier Identifier

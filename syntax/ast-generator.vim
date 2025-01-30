syntax match agComment ,\v//.*$,
syntax match agComment ,\v#.*$,
" syntax region agComment start=,\v/\*, end=,\v\*/, fold

syntax keyword agKeywords settings
syntax keyword agKeywords semantic
syntax keyword agKeywords method
syntax keyword agKeywords property

" Builtin types
syntax keyword agBuiltin string
syntax keyword agBuiltin number
syntax keyword agBuiltin boolean

syntax match agNodeDef /\v<[A-Z][a-z0-9_]+>(\s*[{=])@=/
syntax match agNodeName /\v<[A-Z][a-zA-Z0-9_]*>/
syntax match agIdentifier /\v<[a-z][a-z0-9_]+>/

" Literals
syntax match agNumber /\v<\d+(_\d+)*>/
syntax region agDoubleQuotedString start=/\v"/ skip=/\v\\./ end=/\v"/ end=/\v$/ oneline

"syntax match agCommonError /\v[!=]\=\zs\=/
"syntax match agCommonError /\v[;]*\s*$/
"syntax match agCommonError /\v<[a-z][A-Za-z0-9_$]*\zs[A-Z][A-Za-z0-9_$]*>/  " unlearn camelCase

" Set highlights
highlight default link agComment Comment
highlight default link agKeywords Special
highlight default link agNumber Number
highlight default link agDoubleQuotedString String
highlight default link agNodeDef Function
highlight default link agNodeName SpecialChar
highlight default link agBuiltin Type
"highlight default link agCommonError Error

" Identifiers aren't that nice
" highlight default link agIdentifier Identifier

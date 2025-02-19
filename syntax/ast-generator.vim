syntax match agComment ,\v#.*$,
"syntax match agComment ,\v//.*$,
"syntax region agComment start=,\v/\*, end=,\v\*/, fold

syntax keyword agKeyword settings
syntax keyword agKeyword semantic
syntax keyword agKeyword method
syntax keyword agKeyword property

" Builtin types
syntax keyword agBuiltin string
syntax keyword agBuiltin number
syntax keyword agBuiltin boolean

syntax match agNodeDef /\v<[A-Z][a-zA-Z0-9_]*>(\s*[{=])@=/
syntax match agField /\v<[a-zA-Z0-9_]+>(\s*[:])@=/

" Literals
syntax match agNumber /\v<\d+(_\d+)*>/
syntax region agDoubleQuotedString start=/\v"/ skip=/\v\\./ end=/\v"/ end=/\v$/ oneline

"syntax match agCommonError /\v[!=]\=\zs\=/
"syntax match agCommonError /\v[;]*\s*$/
"syntax match agCommonError /\v<[a-z][A-Za-z0-9_$]*\zs[A-Z][A-Za-z0-9_$]*>/  " unlearn camelCase

" Set highlights
highlight default link agComment Comment
highlight default link agKeyword Special
highlight default link agNumber Number
highlight default link agDoubleQuotedString String
highlight default link agNodeDef Function
highlight default link agBuiltin Type
highlight default link agField Keyword
"highlight default link agCommonError Error

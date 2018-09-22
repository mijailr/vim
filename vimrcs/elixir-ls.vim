" Author: MijailR - https://github.com/mijailr
" Description: Use elixir-ls to lint elixir

function! ale_linters#elixir#elixir-ls#Handle(buffer, lines) abort
  let l:output = []
  let l:json = ale#util#FuzzyJSONDecode(a:lines, {})
endfunction

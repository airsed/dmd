/*
ARG_SETS: -preview=?
ARG_SETS: -preview=h
TEST_OUTPUT:
----
Upcoming language changes listed by -preview=name:
  =all              Enables all available upcoming language changes
  =dip25            implement https://github.com/dlang/DIPs/blob/master/DIPs/archive/DIP25.md (Sealed references)
  =dip1000          implement https://github.com/dlang/DIPs/blob/master/DIPs/other/DIP1000.md (Scoped Pointers)
  =dip1008          implement https://github.com/dlang/DIPs/blob/master/DIPs/other/DIP1008.md (@nogc Throwable)
  =dip1021          implement https://github.com/dlang/DIPs/blob/master/DIPs/accepted/DIP1021.md (Mutable function arguments)
  =fieldwise        use fieldwise comparisons for struct equality
  =markdown         enable Markdown replacements in Ddoc
  =fixAliasThis     when a symbol is resolved, check alias this scope before going to upper scopes
  =intpromote       fix integral promotions for unary + - ~ operators
  =dtorfields       destruct fields of partially constructed objects
  =rvaluerefparam   enable rvalue arguments to ref parameters
  =nosharedaccess   disable access to shared memory objects
  =in               `in` on parameters means `scope const [ref]` and accepts rvalues
----
*/

((do_block "do" @cursor) @endable @indent (#endwise! "end"))

(anonymous_function
  (stab_clause operator: ("->") @cursor) @indent
  (#endwise! "end"))

(ERROR [
  (("fn") (arguments)? ("->") @cursor) @indent
  (("fn") @cursor . (stab_clause)) @indent
  ((identifier) (arguments) ("do") @cursor) @indent
] (#endwise! "end"))

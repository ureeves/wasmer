(wasi_test "fd_allocate.wasm"
  (temp_dirs ".")
  (assert_return (i64.const 0))
  (assert_stdout "171\n1405\n")
)
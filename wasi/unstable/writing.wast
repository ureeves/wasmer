(wasi_test "writing.wasm"
  (map_dirs "act1:test_fs/hamlet/act1" "act2:test_fs/hamlet/act2" "act1-again:test_fs/hamlet/act1")
  (assert_return (i64.const 0))
  (assert_stdout "abcdefghijklmnopqrstuvwxyz\nfile is gone\n")
)
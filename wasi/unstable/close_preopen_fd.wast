(wasi_test "close_preopen_fd.wasm"
  (map_dirs "hamlet:test_fs/hamlet")
  (assert_return (i64.const 0))
  (assert_stdout "accessing preopen fd was a success\nClosing preopen fd was a success\naccessing closed preopen fd was an EBADF error: true\n")
)
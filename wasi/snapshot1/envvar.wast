(wasi_test "envvar.wasm"
  (envs "DOG=1" "CAT=2")
  (assert_return (i64.const 0))
  (assert_stdout "Env vars:\nCAT=2\nDOG=1\nDOG Ok(\"1\")\nDOG_TYPE Err(NotPresent)\nSET VAR Ok(\"HELLO\")\n")
)

if ( requireNamespace("tinytest", quietly = TRUE) ){
  home <- length(unclass(packageVersion("roundhouse"))[[1L]]) == 4
  tinytest::test_package("roundhouse", at_home = home)
}


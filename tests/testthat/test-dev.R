test_that("multiplication works", {
  x <- 1
  expect_true(dev_prep())
  testthat::expect_true(length(ls(all.names = TRUE, envir = globalenv())) == 0)
  testthat::expect_true(is.null(names(sessionInfo()$otherPkgs)))
})

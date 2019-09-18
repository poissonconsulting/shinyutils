test_that("about tab module functions work", {
  expect_is(poisson_footer(), "shiny.tag.list")
  expect_is(poisson_header(), "shiny.tag.list")
  expect_is(poisson_citation(), "shiny.tag.list")
  
  expect_error(poisson_header(1), "`package` must be a string [(]non-missing character scalar[)][.]", 
               class = "chk_error")
  expect_error(poisson_citation(1), "`package` must be a string [(]non-missing character scalar[)][.]", 
               class = "chk_error")
})
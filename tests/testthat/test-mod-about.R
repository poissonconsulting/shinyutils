test_that("about tab module functions work", {
  expect_is(check_taglist(poisson_footer()), "shiny.tag.list")
  expect_is(check_taglist(poisson_header()), "shiny.tag.list")
  expect_is(check_taglist(poisson_citation()), "shiny.tag.list")
  
  expect_error(poisson_header(1), "package must be class character")
  expect_error(poisson_citation(1), "package must be class character")
  
})

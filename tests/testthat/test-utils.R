context("utils tests")

test_that("function works", {
  expect_is(css_add("hi"), "shiny.tag")
  expect_is(repo_ref("shinyutils"), "shiny.tag")
  expect_is(format_citation("shiny"), "character")
  
  x <- inline(p("hi"))
  expect_is(x, "shiny.tag")
  expect_equal(x$attribs$style, "display: inline-block;vertical-align:top;")
})


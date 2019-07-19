context("tag tests")

test_that("tag size works", {
  x <- p_size("hi", font_size = "20px")
  expect_is(x, "shiny.tag")
  expect_equal(x$attribs$style, "font-size: 20px;")
  
  x <- label_size("hi", font_size = "20px")
  expect_is(x, "shiny.tag")
  expect_equal(x$attribs$style, "font-size: 20px;")
  
  x <- help_size("hi", font_size = "20px")
  expect_is(x, "shiny.tag")
  expect_equal(x$attribs$style, "font-size: 20px;")
  
  expect_is(fix_text("hi"), "shiny.tag")
})

test_that("button works", {
  expect_is(button("hi", "hi", "file", "success"), "shiny.tag")
  expect_error(button("hi", "hi", "file", "failure"), "status can only include values 'danger', 'dark', 'info', 'light', 'primary', 'secondary', 'success' or 'warning'")
})



test_that("info works", {
  expect_is(info("hi", label = "test", help = "help"), "shiny.tag.list")
})

test_that("ui works", {
  expect_is(select_input_x("hi", choices = c("yes", "no")), "shiny.tag")
  expect_is(value_box(subtitle = "hi", value = 1), "shiny.tag")
  expect_is(fix_ui(fix = "say hi", condition = "input", add_output_ns = FALSE), "shiny.tag")
})



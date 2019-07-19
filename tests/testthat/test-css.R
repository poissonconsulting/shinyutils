test_that("css functions work", {
  expect_is(css_add("test"), "shiny.tag")
  expect_is(css_navbar(), "shiny.tag")
  expect_is(css_slider(), "shiny.tag")
  expect_is(css_hide_errors(), "shiny.tag")
  expect_is(css_leaflet_full(), "shiny.tag")
  expect_is(css_body(), "shiny.tag")
})

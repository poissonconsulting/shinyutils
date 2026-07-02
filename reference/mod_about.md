# mod_about_ui and mod_about_server

A shiny Module to generate About tab.

## Usage

``` r
mod_about_ui(
  id,
  package = "shinyutils",
  header = poisson_header(package),
  citation = poisson_citation(package),
  footer = poisson_footer(),
  ...
)

mod_about_server(input, output, session)
```

## Arguments

- id:

  A character string of the shiny id.

- package:

  A character string of the package name.

- header:

  A taglist containing ui elements for the upper body.

- citation:

  A taglist containing ui elements for the citation.

- footer:

  A taglist containing ui elements for the lower body.

- input:

  internal

- output:

  internal

- session:

  internal

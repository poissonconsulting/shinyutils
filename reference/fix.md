# fix_ui and fix_server

fix_ui and fix_server

## Usage

``` r
fix_ui(
  fix,
  condition_name,
  ns = NS(NULL),
  add_output_ns = TRUE,
  fix_size = "13px",
  ...
)

fix_server(output, condition_name, condition)
```

## Arguments

- fix:

  A character string of the fix text.

- condition_name:

  A character string of the condition name or, if add_output_ns = FALSE,
  JS code evaluating a condition (with no server side component).

- ns:

  A function of the namespace.

- add_output_ns:

  A flag indicating whether to add output and namespace to condition
  string.

- fix_size:

  A character string of the fix text size.

- ...:

  arguments passed to conditionalPanel

- output:

  internal

- condition:

  A shiny reactive evaluating to a flag.

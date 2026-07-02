# Info text appear when icon clicked

Info text appear when icon clicked

## Usage

``` r
info(
  id,
  label,
  help,
  label_size = "15px",
  help_size = "12px",
  icon_size = "15px",
  ns = NS(NULL),
  ...
)
```

## Arguments

- id:

  A character string of the shiny id.

- label:

  A character string of the package name.

- help:

  A taglist containing ui elements for the upper body.

- label_size:

  A character string of the label font size.

- help_size:

  A character string of the help font size.

- icon_size:

  A character string of the icon size.

- ns:

  A function of the namespace.

- ...:

  arguments passed to actionLink

## Value

a shiny taglist

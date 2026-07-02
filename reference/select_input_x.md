# Select input with x

Select input with x

## Usage

``` r
select_input_x(
  id,
  label = "Select sites:",
  choices,
  selected = choices[1],
  ...
)
```

## Arguments

- id:

  A character string of the shiny id.

- label:

  A characer string of the label.

- choices:

  A vector of characer strings of choices.

- selected:

  A characer string of the initial selected choice.

- ...:

  arguments passed to selectizeInput

## Value

a shiny tag.

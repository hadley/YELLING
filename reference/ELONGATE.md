# Elongate text

Stretch vowels for emphasis.

## Usage

``` r
ELONGATE(x, n = 3)
```

## Arguments

- x:

  A character vector.

- n:

  Number of times to repeat vowels (default 3).

## Value

A character vector with elongated vowels.

## Examples

``` r
ELONGATE("no")
#> [1] "nooo"
ELONGATE("why", n = 5)
#> [1] "why"
```

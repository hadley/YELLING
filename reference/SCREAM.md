# Scream text

Convert text to uppercase and add exclamation marks.

## Usage

``` r
SCREAM(x, n = 3)
```

## Arguments

- x:

  A character vector.

- n:

  Number of exclamation marks to add (default 3).

## Value

A character vector in uppercase with exclamation marks.

## Examples

``` r
SCREAM("hello")
#> [1] "HELLO!!!"
SCREAM("fire", n = 5)
#> [1] "FIRE!!!!!"
```

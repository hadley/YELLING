# Check if text is yelling

Returns TRUE if text is all uppercase.

## Usage

``` r
IS_YELLING(x)
```

## Arguments

- x:

  A character vector.

## Value

A logical vector.

## Examples

``` r
IS_YELLING("HELLO")
#> [1] TRUE
IS_YELLING("hello")
#> [1] FALSE
IS_YELLING("Hello")
#> [1] FALSE
```

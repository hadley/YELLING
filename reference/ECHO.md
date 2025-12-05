# Echo text

Repeat text with fading effect.

## Usage

``` r
ECHO(x, times = 3)
```

## Arguments

- x:

  A character vector.

- times:

  Number of echoes (default 3).

## Value

A character vector with echo effect.

## Examples

``` r
ECHO("hello")
#> [1] "HELLO... Hello... hello"
ECHO("goodbye", times = 4)
#> [1] "GOODBYE... Goodbye... Goodbye... goodbye"
```

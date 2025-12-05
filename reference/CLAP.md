# Clap between words

Add clap emoji between words for emphasis.

## Usage

``` r
CLAP(x, emoji = "👏")
```

## Arguments

- x:

  A character vector.

- emoji:

  The emoji to insert (default clap).

## Value

A character vector with emoji between words.

## Examples

``` r
CLAP("say it louder")
#> [1] "say 👏 it 👏 louder"
CLAP("do it now", emoji = "\U0001F525")
#> [1] "do 🔥 it 🔥 now"
```

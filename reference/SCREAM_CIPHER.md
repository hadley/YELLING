# Scream cipher

Encode text using the scream cipher from XKCD 3054, where each letter is
represented by the letter A with a different diacritical mark. The
result looks like screaming (AAAAAAAA) but encodes a message.

## Usage

``` r
SCREAM_CIPHER(x, decode = FALSE)
```

## Arguments

- x:

  A character vector.

- decode:

  If TRUE, decode instead of encode.

## Value

A character vector with encoded/decoded text.

## Examples

``` r
SCREAM_CIPHER("hi")
#> [1] "ÅĀ"
SCREAM_CIPHER("secret message")
#> [1] "ẦÂÀẤÂẨ ȀÂẦẦAÄÂ"
```

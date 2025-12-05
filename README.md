
# YELLING <a href="https://hadley.github.io/YELLING/"><img src="man/figures/logo.png" align="right" height="120" alt="YELLING website" /></a>

A comprehensive toolkit for expressing yourself textually.

## Installation

``` r
# install.packages("pak")
pak::pak("hadley/YELLING")
```

## Usage

``` r
library(YELLING)
```

### Volume Control

``` r
YELL("hello")
#> [1] "HELLO"

WHISPER("PLEASE BE QUIET")
#> [1] "please be quiet"

SCREAM("fire")
#> [1] "FIRE!!!"

YELL_LOUDER("HELLO!")
#> [1] "HELLO!!!!"
```

### Emotional Expression

``` r
SARCASTICALLY("oh wow thats great")
#> [1] "Oh wOw tHaTs gReAt"

PASSIVE_AGGRESSIVELY("fine whatever sure")
#> [1] "fine. whatever. sure"

DRAMATICALLY("I cant believe it")
#> [1] "I... cant... believe... it"
```

### Internet Culture

``` r
CLAP("say it louder")
#> [1] "say 👏 it 👏 louder"

MOCK("I'm not mad")
#> [1] "i'm nOt mAd"
```

### Sound Effects

``` r
ECHO("hello")
#> [1] "HELLO... Hello... hello"

ELONGATE("no")
#> [1] "nooo"

STUTTER("what do you mean")
#> [1] "w-what d-do y-you m-mean"
```

### Utility

``` r
IS_YELLING("HELLO")
#> [1] TRUE

SHOUT_INTO_VOID("HELLO?")
#> [1] ""

INDOOR_VOICE("HELLO")
#> [1] "please use your indoor voice: hello"
```

### Scream Cipher

Based on [XKCD 3054](https://xkcd.com/3054/), encodes text using A with
different diacritical marks for each letter.

``` r
SCREAM_CIPHER("hello")
#> [1] "ÅÂǍǍḀ"

SCREAM_CIPHER("ÅÂǍǍḀ", decode = TRUE)
#> [1] "HELLO"
```

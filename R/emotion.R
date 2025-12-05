#' Speak sarcastically
#'
#' Alternating caps for sarcastic tone.
#'
#' @param x A character vector.
#' @return A character vector in alternating case.
#' @export
#' @examples
#' SARCASTICALLY("oh wow thats great")
#' SARCASTICALLY("sure jan")
SARCASTICALLY <- function(x) {
  vapply(x, function(s) {
    chars <- strsplit(s, "")[[1]]
    result <- vapply(seq_along(chars), function(i) {
      if (i %% 2 == 1) toupper(chars[i]) else tolower(chars[i])
    }, character(1))
    paste(result, collapse = "")
  }, character(1), USE.NAMES = FALSE)
}

#' Speak passive-aggressively
#'
#' Add periods between words.
#'
#' @param x A character vector.
#' @return A character vector with periods between words.
#' @export
#' @examples
#' PASSIVE_AGGRESSIVELY("fine whatever sure")
#' PASSIVE_AGGRESSIVELY("I said its fine")
PASSIVE_AGGRESSIVELY <- function(x) {
  vapply(x, function(s) {
    words <- strsplit(s, "\\s+")[[1]]
    paste(words, collapse = ". ")
  }, character(1), USE.NAMES
= FALSE)
}

#' Speak dramatically
#'
#' Add dramatic pauses between words.
#'
#' @param x A character vector.
#' @return A character vector with dramatic pauses.
#' @export
#' @examples
#' DRAMATICALLY("I cant believe it")
#' DRAMATICALLY("no this cant be")
DRAMATICALLY <- function(x) {
  vapply(x, function(s) {
    words <- strsplit(s, "\\s+")[[1]]
    paste(words, collapse = "... ")
  }, character(1), USE.NAMES = FALSE)
}

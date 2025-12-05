#' Whisper text
#'
#' Convert text to lowercase for whispering.
#'
#' @param x A character vector.
#' @return A character vector in lowercase.
#' @export
#' @examples
#' WHISPER("PLEASE BE QUIET")
WHISPER <- function(x) {
  tolower(x)
}

#' Scream text
#'
#' Convert text to uppercase and add exclamation marks.
#'
#' @param x A character vector.
#' @param n Number of exclamation marks to add (default 3).
#' @return A character vector in uppercase with exclamation marks.
#' @export
#' @examples
#' SCREAM("hello")
#' SCREAM("fire", n = 5)
SCREAM <- function(x, n = 3) {
  paste0(toupper(x), strrep("!", n))
}

#' Yell louder
#'
#' Add more exclamation marks to make text louder.
#'
#' @param x A character vector.
#' @param n Number of exclamation marks to add (default 3).
#' @return A character vector with added exclamation marks.
#' @export
#' @examples
#' YELL_LOUDER("HELLO!")
YELL_LOUDER <- function(x, n = 3) {
  paste0(x, strrep("!", n))
}

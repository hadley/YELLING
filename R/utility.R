#' Check if text is yelling
#'
#' Returns TRUE if text is all uppercase.
#'
#' @param x A character vector.
#' @return A logical vector.
#' @export
#' @examples
#' IS_YELLING("HELLO")
#' IS_YELLING("hello")
#' IS_YELLING("Hello")
IS_YELLING <- function(x) {
  x == toupper(x) & nchar(x) > 0 & grepl("[A-Za-z]", x)
}

#' Shout into the void
#'
#' The void does not answer back.
#'
#' @param x A character vector (ignored).
#' @return An empty string.
#' @export
#' @examples
#' SHOUT_INTO_VOID("HELLO?")
#' SHOUT_INTO_VOID("IS ANYONE THERE?")
SHOUT_INTO_VOID <- function(x) {
  ""
}

#' Use your indoor voice
#'
#' Politely remind to use lowercase.
#'
#' @param x A character vector.
#' @return A character vector with a gentle reminder.
#' @export
#' @examples
#' INDOOR_VOICE("HELLO")
INDOOR_VOICE <- function(x) {
  paste("please use your indoor voice:", tolower(x))
}

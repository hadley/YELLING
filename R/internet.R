#' Clap between words
#'
#' Add clap emoji between words for emphasis.
#'
#' @param x A character vector.
#' @param emoji The emoji to insert (default clap).
#' @return A character vector with emoji between words.
#' @export
#' @examples
#' CLAP("say it louder")
#' CLAP("do it now", emoji = "\U0001F525")
CLAP <- function(x, emoji = "\U0001F44F") {
  vapply(x, function(s) {
    words <- strsplit(s, "\\s+")[[1]]
    paste(words, collapse = paste0(" ", emoji, " "))
  }, character(1), USE.NAMES = FALSE)
}

#' Mock text
#'
#' SpongeBob mocking meme text with alternating case.
#'
#' @param x A character vector.
#' @return A character vector in mocking case.
#' @export
#' @examples
#' MOCK("I'm not mad")
#' MOCK("this is fine")
MOCK <- function(x) {

  vapply(x, function(s) {
    chars <- strsplit(s, "")[[1]]
    result <- vapply(seq_along(chars), function(i) {
      if (i %% 2 == 0) toupper(chars[i]) else tolower(chars[i])
    }, character(1))
    paste(result, collapse = "")
  }, character(1), USE.NAMES = FALSE)
}

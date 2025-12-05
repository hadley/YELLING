#' Echo text
#'
#' Repeat text with fading effect.
#'
#' @param x A character vector.
#' @param times Number of echoes (default 3).
#' @return A character vector with echo effect.
#' @export
#' @examples
#' ECHO("hello")
#' ECHO("goodbye", times = 4)
ECHO <- function(x, times = 3) {
  vapply(x, function(s) {
    echoes <- vapply(seq_len(times), function(i) {
      if (i == 1) {
        toupper(s)
      } else if (i == times) {
        tolower(s)
      } else {
        # Title case for middle echoes
        paste0(toupper(substring(s, 1, 1)), tolower(substring(s, 2)))
      }
    }, character(1))
    paste(echoes, collapse = "... ")
  }, character(1), USE.NAMES = FALSE)
}

#' Elongate text
#'
#' Stretch vowels for emphasis.
#'
#' @param x A character vector.
#' @param n Number of times to repeat vowels (default 3).
#' @return A character vector with elongated vowels.
#' @export
#' @examples
#' ELONGATE("no")
#' ELONGATE("why", n = 5)
ELONGATE <- function(x, n = 3) {
  vapply(x, function(s) {
    gsub("([aeiouAEIOU])", paste0(rep("\\1", n), collapse = ""), s)
  }, character(1), USE.NAMES = FALSE)
}

#' Stutter text
#'
#' Add stuttering effect to words.
#'
#' @param x A character vector.
#' @return A character vector with stuttering.
#' @export
#' @examples
#' STUTTER("what do you mean")
#' STUTTER("I dont know")
STUTTER <- function(x) {
  vapply(x, function(s) {
    words <- strsplit(s, "\\s+")[[1]]
    stuttered <- vapply(words, function(w) {
      if (nchar(w) > 0) {
        paste0(tolower(substring(w, 1, 1)), "-", w)
      } else {
        w
      }
    }, character(1))
    paste(stuttered, collapse = " ")
  }, character(1), USE.NAMES = FALSE)
}

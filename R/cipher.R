#' Scream cipher
#'
#' Encode text using the scream cipher from XKCD 3054, where each letter
#' is represented by the letter A with a different diacritical mark.
#' The result looks like screaming (AAAAAAAA) but encodes a message.
#'
#' @param x A character vector.
#' @param decode If TRUE, decode instead of encode.
#' @return A character vector with encoded/decoded text.
#' @export
#' @examples
#' SCREAM_CIPHER("hi")
#' SCREAM_CIPHER("secret message")
SCREAM_CIPHER <- function(x, decode = FALSE) {
 # A with various diacritical marks for each letter A-Z
  scream_alphabet <- c(
    "A",          # A - plain
    "\u0226",     # B - Ȧ (dot above)
    "\u00C0",     # C - À (grave)
    "\u00C1",     # D - Á (acute)
    "\u00C2",     # E - Â (circumflex)
    "\u00C3",     # F - Ã (tilde)
    "\u00C4",     # G - Ä (diaeresis)
    "\u00C5",     # H - Å (ring above)
    "\u0100",     # I - Ā (macron)
    "\u0102",     # J - Ă (breve)
    "\u0104",     # K - Ą (ogonek)
    "\u01CD",     # L - Ǎ (caron)
    "\u0200",     # M - Ȁ (double grave)
    "\u0202",     # N - Ȃ (inverted breve)
    "\u1E00",     # O - Ḁ (ring below)
    "\u1EA0",     # P - Ạ (dot below)
    "\u1EA2",     # Q - Ả (hook above)
    "\u1EA4",     # R - Ấ (circumflex acute)
    "\u1EA6",     # S - Ầ (circumflex grave)
    "\u1EA8",     # T - Ẩ (circumflex hook)
    "\u1EAA",     # U - Ẫ (circumflex tilde)
    "\u1EAC",     # V - Ậ (circumflex dot below)
    "\u1EAE",     # W - Ắ (breve acute)
    "\u1EB0",     # X - Ằ (breve grave)
    "\u1EB2",     # Y - Ẳ (breve hook)
    "\u1EB4"      # Z - Ẵ (breve tilde)
  )
  names(scream_alphabet) <- LETTERS

  if (decode) {
    # Create reverse mapping
    decode_map <- stats::setNames(LETTERS, scream_alphabet)
    vapply(x, function(s) {
      chars <- strsplit(s, "")[[1]]
      decoded <- vapply(chars, function(ch) {
        if (ch %in% names(decode_map)) {
          decode_map[[ch]]
        } else {
          ch
        }
      }, character(1))
      paste(decoded, collapse = "")
    }, character(1), USE.NAMES = FALSE)
  } else {
    vapply(x, function(s) {
      chars <- strsplit(toupper(s), "")[[1]]
      encoded <- vapply(chars, function(ch) {
        if (ch %in% LETTERS) {
          scream_alphabet[[ch]]
        } else {
          ch
        }
      }, character(1))
      paste(encoded, collapse = "")
    }, character(1), USE.NAMES = FALSE)
  }
}

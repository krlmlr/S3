#' @export
default_print <- function(x, ...) {
  cat(format(x, ...), sep = "\n")
  invisible(x)
}

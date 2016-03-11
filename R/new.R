#' @export
make_new <- function(class, env = parent.frame()) {
  f <- eval(bquote(function(x, ...) {
    structure(x, ..., class = .(class))
  }))
  environment(f) <- env
  f
}

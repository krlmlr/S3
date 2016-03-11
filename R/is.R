#' @export
make_is <- function(class, env = parent.frame()) {
  f <- eval(bquote(function(x) {
    inherits(x, .(class))
  }))
  environment(f) <- env
  f
}

## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "",
  out.width = "100%"
)

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("hawkesbow")

## ----eval=FALSE---------------------------------------------------------------
#  devtools::install_github("fcheysson/hawkesbow")

## ----hawkes, echo=FALSE, fig.align="center", out.width="90%", fig.cap="Realisation of an exponential Hawkes process, with $\\eta = 1$, $\\mu = 0.5$ and $h^\\ast(t) = 2e^{-2t}$. The crosses represent the arrival times of the process. (Top) Representation of the conditional intensity of the process: each event increases the probability of occurrence of future events, according to the reproduction function $h = \\mu h^\\ast$. (Bottom) Representation of the process as a poisson cluster process: each immigrant (black squares, of generation 0) can generate children (red dots, of generation 1), which can in turn generate children, and so on."----
knitr::include_graphics("hawkes.eps")

## ----eval= FALSE--------------------------------------------------------------
#  hawkes(end, fun, repr, family, M=null, ...)

## ----eval=FALSE---------------------------------------------------------------
#  x <- hawkes(10, fun = 1, repr = 0.5, family = "exp", rate = 2)

## ----eval=FALSE---------------------------------------------------------------
#  x <- hawkes(10, fun=function(y) {1+sin(y)}, M=2, repr=0.25,
#              family=function(n) {1 - sqrt(1 - runif(n))})

## ----eval=FALSE---------------------------------------------------------------
#  plot.hawkes(x, intensity = FALSE, precision = 1e3, fun = NULL, repr = NULL, family = NULL,
#              M = NULL, ...)

## ----eval=FALSE---------------------------------------------------------------
#  mle(events, kern, end, init = NULL, opts = NULL, ...)

## ----eval=FALSE---------------------------------------------------------------
#  x = hawkes(100, fun = 1, repr = .5, family = "exp", rate = 1)
#  mle(x$p, "Exponential", x$end)

## ----eval=FALSE---------------------------------------------------------------
#  whittle(counts, kern, binsize = NULL, trunc = 5L, init = NULL, ...)

## ----eval=FALSE---------------------------------------------------------------
#  x = hawkes(1000, fun = 1, repr = .5, family = "exp", rate = 1)
#  y = discrete(x, binsize = 1)
#  whittle(y, "Exponential", 1)


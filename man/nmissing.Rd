\name{nmissing}
\alias{nmissing}
\alias{rp.missing}
\title{Number of Missing Cases}
\usage{
nmissing(...)
}
\arguments{
  \item{...}{parameters to be passed to \code{univar}
  function}
}
\value{
a numeric value with number of missing vector elements
}
\description{
Returns a number of missing (\code{NA}) values in a
variable. This is a wrapper around \code{\link{univar}}
function with anonymous function passed to count number of
\code{NA} elements in a variable.
}


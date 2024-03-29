% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/univar.R
\name{nvalid}
\alias{nvalid}
\alias{rp.valid}
\title{Number of Valid Cases}
\usage{
nvalid(...)
}
\arguments{
\item{...}{parameters to be passed to \code{univar} function}
}
\value{
a numeric value with number of valid (non-NA) vector elements
}
\description{
Returns the number of valid (non-\code{NA}) values in a variable. This is a wrapper around \code{\link{univar}} function with \code{\link{length}} function passed in \code{fn} argument, but with missing values previously removed. However, it's not possible to cancel \code{NA} omission with this function (doing so will yield error).
}

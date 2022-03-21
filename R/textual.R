#' A fraction in ordinary English language
#' @param x numeric
#' @return string
#' @export
#' @importFrom MASS fractions
fraction.to.string <- function(x) {
    if (length(x) > 1)
        return(sapply(x, fraction.to.string))
    s <- attr(fractions(x, max.denominator = 10), 'frac')
    s <- strsplit(s, '/')[[1]]
    s <- as.numeric(s)
    if (x > 1 || x < 0)
        stop('Please provide a fraction (value between 0 and 1)!')
    if (length(s) == 1 && s == 0)
        return('less then one tenth')
    if (length(s) == 1 && s == 1)
        return('more then nine tenth')
    if (s[2] > 10)
        s <- c(round(x*10, 0), 10)
    s1 <- factor(s[1], levels = 1:9)
    levels(s1) <- c('one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine')
    s2 <- factor(s[2], levels = 2:10)
    levels(s2) <- c('half', 'third', 'fourth', 'fith', 'sixth', 'seventh', 'eighth', 'ninth', 'tenth')
    paste(s1, s2)
}


#' Synonym
#' @param word a word to look-up in `rapportools::synonyms`
#' @return a synonym if found in `rapportools::synonyms` words
#' @export
#' @examples
#' synonym('package')
#' synonym('bar')
synonym <- function(word) {
    s <- which(sapply(synonyms(), function(w) any(w %in% word)))
    if (length(s) > 0)
        sample(synonyms()[[s]], 1)
}


#' Get or set synonyms list
#'
#' Without the \code{l} parameter, this function returns the saved list of synonym words. If \code{l} is set, then this word list is saved for future use.
#' @param l a grouped list of words
#' @export
#' @examples {
#' synonyms(list(c('package', 'library'), c('foo', 'bar', 'baz')))
#' synonyms()
#' }
#' @importFrom utils assignInMyNamespace
synonyms <- function(l) {
    if (base::missing(l))
        synonyms_list
    else
        assignInMyNamespace('synonyms_list', l)
}
synonyms_list <- list(c('package', 'library'), c('foo', 'bar', 'baz'))

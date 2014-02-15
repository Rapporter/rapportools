#' A fraction in ordinary English language
#' @param x numeric
#' @return string
#' @export
fraction.to.string <- function(x) {
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

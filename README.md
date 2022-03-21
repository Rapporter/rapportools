## About

This R package includes some helper functions that used to be part of the [rapport](https://rapporter.github.io/rapport) package for a long time. But for the sake of modularity, these functions were moved to a separate package that should be used *inside* of `rapport` templates.

These functions are basically wrappers to more advanced statistical methods with the advantage of having sane defaults for quick reporting. E.g. updating the `na.rm` parameter of the `min`, `max`, `mean` etc. to `TRUE` and providing access to some other helpers like generating frequency tables with percentages or returning `var` for a subset of a `data.frame`.

## Note

The basic stats functions (see above) are also overwritten, so be prepared for such changes if you `library(rapportools)`.

## Suggestion

Use this package inside of `rapport` templates, as it was intended. `rapport` would load the package on demand (if the template needs it), then would remove it from the search path, so that to keep the clutter at a minimal level in the `.GlobalEnv`.

## Install

`rapportools` can be installed from CRAN:

```r
install.packages('rapportools')
```

Or grab the most recent (development) version of the package with `devtools`:

```r
remotes::install_github('rapporter'/rapportools')
```

The build status of that latter: [![Build Status](https://travis-ci.org/Rapporter/rapportools.png?branch=master)](https://travis-ci.org/Rapporter/rapportools)

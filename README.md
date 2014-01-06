## About

This R package includes some helper functions that used to be part of the [rapport](http://rapport-package.info/) package for a long time. But for the sake of modularity, these functions were moved to a separate package that should be used *inside* of `rapport` templates.


These functions are basically wrappers to more advanced statistical methods with the advantage of having sane defaults for quick reporting. E.g. updating the `na.rm` parameter of the `min`, `max`, `mean` etc. to `TRUE` and providing access to some other helpers like generating frequency tables with percentages or returning `var` for a subset of a `data.frame`.

## Note

This package directly loads the `reshape` and `plyr` packages, because some helpers rely on the first version of `reshape` that cannot be imported. This means some extra clutter in the `.GlobalEnv`. Beside that, the basic stats functions (see above) are also overwritten, so be prepared for such changes if you `library(rapportools)`.

## Suggestion

Use this package inside of `rapport` templates, as it was intended. `rapport` would load the package on demand (if the template needs it), then would remove it from the search path, so that to keep the clutter at a minimal level in the `.GlobalEnv`.

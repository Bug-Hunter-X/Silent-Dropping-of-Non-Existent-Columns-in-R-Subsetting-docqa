This repository demonstrates a common but easily overlooked issue in R: the silent dropping of columns when subsetting a data frame using a character vector that includes non-existent column names.

The `bug.R` file contains code that attempts to subset a data frame using such a character vector.  The resulting subset will *not* throw an error, but it will omit the columns that are not found.  This can lead to unexpected behavior and difficult-to-debug errors in larger programs.

The `bugSolution.R` file provides a more robust approach, using `intersect()` to ensure that only existing columns are selected.  This prevents unexpected data loss and promotes more reliable code.
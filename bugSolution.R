```r
# More robust subsetting that handles missing columns gracefully

df <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C", "B")

# Use intersect to only select columns present in the data frame
cols_present <- intersect(cols_to_select, colnames(df))
subset_df <- df[, cols_present]

# Check if any columns were dropped
if(length(cols_to_select) != length(cols_present)){
  warning(paste("Columns not found and dropped:", paste(setdiff(cols_to_select, cols_present), collapse = ", ")))
}
```
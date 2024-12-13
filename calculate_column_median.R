calculate_column_median <- function(data) {
  medians <- numeric(0)
  for (col_name in colnames(data)) {
    if (is.numeric(data[[col_name]])) {
      medians[col_name] <- median(data[[col_name]], na.rm = TRUE)
    } else {
      cat(paste("Skipping non-numeric column:", col_name, "\n"))
    }
  }
  return(medians)
}

fill_missing_with_median <- function(data) {
  for (col_name in colnames(data)) {
    if (is.numeric(data[[col_name]])) {
      col_median <- median(data[[col_name]], na.rm = TRUE)
      data[[col_name]][is.na(data[[col_name]])] <- col_median
    } else {
      cat(paste("Skipping non-numeric column:", col_name, "\n"))
    }
  }
  return(data)
}

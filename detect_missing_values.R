detect_missing_values <- function(data) {
  missing_counts <- colSums(is.na(data))
  missing_counts <- missing_counts[missing_counts > 0]
  return(missing_counts)
}


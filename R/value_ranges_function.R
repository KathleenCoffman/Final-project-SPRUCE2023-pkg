#' Value ranges check function
#'
#' @param renamed_merged_SPRUCE_df A data frame checked for negative values.
#'
#' @return A message with the outcome of checking for negative values in the dataframe.
#'
#' @export
value_ranges_function <- function(renamed_merged_SPRUCE_df) {
  numeric_columns <- sapply(renamed_merged_SPRUCE_df, is.numeric)
  if (any(renamed_merged_SPRUCE_df[, numeric_columns] < 0)) {
    stop("Error: Numeric columns contain negative values.")
  }
  # Add more checks for specific value ranges as needed
  return("Value range validation passed successfully.")
}

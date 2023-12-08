#' Data check function
#'
#' @param renamed_merged_SPRUCE_df A data frame checked for missing values in its numeric columns.
#'
#' @return A message indicating the outcome of data validation described above.
#'
#' @details The function identifies numeric columns in the given data frame, checks for missing values
#' in these columns, and returns an error message in the console if any are found.
#'
#' @export
data_check_function <- function(renamed_merged_SPRUCE_df) {
  # Identify numeric columns
  numeric_columns <- sapply(renamed_merged_SPRUCE_df, is.numeric)

  # Check for missing values in numeric columns
  if (any(sapply(renamed_merged_SPRUCE_df[, numeric_columns], function(x) any(is.na(x))))) {
    stop("Error: There are missing values in the numeric columns.")
  }

  # If no issues are found, return a message
  return("Data validation passed successfully.")
}

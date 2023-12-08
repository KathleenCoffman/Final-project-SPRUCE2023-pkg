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

#' Read and merge CSV files, which reads a list of CSV files into data frames, merges them into
#' a single dataframe, and cleans up the data a bit.
#'
#' @param file_names A character vector specifying the names of the CSV files to be read and merged.
#'
#' @return A cleaned data frame after reading and merging the specified CSV files.
#'
#' @details The function reads each CSV file into a list of data frames, combines them into a single data frame using bind_rows,
#' andcleans up column names. Additionally, it removes a specific row with a missing value.
#'
#' @export
read_and_merge_csv_files <- function(file_names) {
  # Read CSV files into a list of data frames
  list_of_dfs <- lapply(file_names, function(file) read_csv(file, na = ""))

  # Combine data frames into a single data frame using bind_rows
  merged_df <- bind_rows(list_of_dfs)

  # Remove spaces within column names
  colnames(merged_df) <- gsub(" ", "_", colnames(merged_df))

  # Remove double underscores within column names
  colnames(merged_df) <- gsub("__", "_", colnames(merged_df))

  # Remove the row with the missing value (row number 394554)
  cleaned_data <- merged_df[-394554, ]

  return(cleaned_data)
}

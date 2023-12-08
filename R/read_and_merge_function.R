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

plot_function <- function( renamed_merged_SPRUCE_df, Year, soil_temp_zoneB_10cmdepth, CO2_trmt, Temp_Target) {
  library(ggplot2)

  # Convert the CO2 and temperature variables to factors
  renamed_merged_SPRUCE_df["CO2_trmt"] <- factor(renamed_merged_SPRUCE_df[[CO2_trmt]])
  renamed_merged_SPRUCE_df["Temp_Target"] <- factor(renamed_merged_SPRUCE_df[[Temp_Target]])

  # Remove rows with NA values in the specified variables
  renamed_merged_SPRUCE_df <- na.omit(renamed_merged_SPRUCE_df[, c("Year", "soil_temp_zoneB_10cmdepth", "CO2_trmt", "Temp_Target")])

  # Filter data for specific temperature targets (here, 0 degrees and 9 degrees)
  selected_temp_targets <- c(0, 9)
  filtered_data <- renamed_merged_SPRUCE_df[renamed_merged_SPRUCE_df$Temp_Target %in% selected_temp_targets, ]

  # Create the scatter plot with angled x-axis labels
  plot <- ggplot(filtered_data, aes(x = Year, y = soil_temp_zoneB_10cmdepth, color = Temp_Target)) +
    geom_point(size = 1) +
    labs(title = "Scatter Plot of Environmental Data",
         x = "Year", y = "soil temp zoneB 10cm depth",
         color = "Temperature Treatment") +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +  # Angle x-axis labels
    facet_wrap(~CO2_trmt + Temp_Target)  # Add this line to create panels based on CO2_trmt and Temp_target

  print(plot)
}

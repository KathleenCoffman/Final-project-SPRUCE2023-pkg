% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_function.R
\name{plot_function}
\alias{plot_function}
\title{Scatter Plot of some SPRUCE soil temp data by Year}
\usage{
plot_function(
  renamed_merged_SPRUCE_df,
  Year,
  soil_temp_zoneB_10cmdepth,
  CO2_trmt,
  Temp_Target
)
}
\arguments{
\item{renamed_merged_SPRUCE_df}{A data frame containing environmental data, including columns "Year", "soil_temp_zoneB_10cmdepth", "CO2_trmt", and "Temp_Target".}

\item{Year}{The column 'year'.}

\item{soil_temp_zoneB_10cmdepth}{The column representing soil temperature at 10cm depth in zone B.}

\item{CO2_trmt}{The column representing CO2 treatment, either ambient or elevated.}

\item{Temp_Target}{The column representing temperature treatment in SPRUCE enclosures.}
}
\value{
A scatter plot of soil temperature at 10cm depth (zone B) over time, according to temperature treatment and  CO2 treatment..
}
\description{
Scatter Plot of some SPRUCE soil temp data by Year
}

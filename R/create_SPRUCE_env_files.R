#' Creates an vector object containing all SPRUCE WEW csv files of interest
#'
#' @param plot_numbers Numeric vector specifying the plot numbers.
#' @param date Character string specifying the date in the format "YYYYMMDD".
#'
#' @return a character vector containing SPRUCE environmental files
#'
#'
#'
#' @export
create_SPRUCE_env_files <- function() {
  SPRUCE_env_files <- c(
    "WEW PLOT_04_Complete_Environ_20220518.csv",
    "WEW PLOT_06_Complete_Environ_20220518.csv",
    "WEW PLOT_07_Complete_Environ_20220518.csv",
    "WEW PLOT_08_Complete_Environ_20220518.csv",
    "WEW PLOT_10_Complete_Environ_20220518.csv",
    "WEW PLOT_11_Complete_Environ_20220518.csv",
    "WEW PLOT_13_Complete_Environ_20220518.csv",
    "WEW PLOT_16_Complete_Environ_20220518.csv",
    "WEW PLOT_17_Complete_Environ_20220518.csv",
    "WEW PLOT_19_Complete_Environ_20220518.csv",
    "WEW PLOT_20_Complete_Environ_20220518.csv",
    "WEW PLOT_21_Complete_Environ_20220518.csv"
  )
  return(SPRUCE_env_files)
}


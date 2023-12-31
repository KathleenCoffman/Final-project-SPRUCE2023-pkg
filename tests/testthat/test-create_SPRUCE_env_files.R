test_that("create_SPRUCE_env_files returns the correct vector", {
  expected_output <- c("WEW PLOT_04_Complete_Environ_20220518.csv",
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
  # Call the function
  actual_output <- create_SPRUCE_env_files()

  # Compare actual output with expected output
  expect_equal(actual_output, expected_output)
})

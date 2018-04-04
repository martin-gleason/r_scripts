##lubridate to quarter function
require("lubridate")

quarter_date <- function(x, na.rm, ...) {
  quarter(x, with_year = TRUE, fiscal_start = 1)
}

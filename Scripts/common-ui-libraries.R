common_ui_libraries <- function() {
  required_packages <- c(
    "tidyverse", "stringr", "readr", "reader", 
    "readxl", "tidyr", "janitor", "lubridate", 
    "modelsummary", "gt"
  )
  
  missing_packages <- required_packages[!required_packages %in% installed.packages()]
  
  if (length(missing_packages) > 0) {
    cat("Installing missing packages:", paste(missing_packages, collapse = ", "), "\n")
    install.packages(missing_packages, dependencies = TRUE)
  } else {
    cat("All required packages are already installed.\n")
  }
  
  invisible(lapply(required_packages, library, character.only = TRUE))
}
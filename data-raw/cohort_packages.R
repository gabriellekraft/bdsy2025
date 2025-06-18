#' @title List of packages for the cohorts
#'
#' @format
#' \describe{
#'   \item{cohort}{list of packages for the ci cohort}
#' }
#' @source my mind
"cohort_packages"

## code to prepare `cohort_packages` dataset goes here
cohort_packages <- list(
  ci = c("readr", "readxl", "dplyr", "tidyr", "equatiomatic", "performance", "tableone", "knitr", "kableExtra", "infer", "tidyverse")
)
usethis::use_data(cohort_packages, overwrite = TRUE)

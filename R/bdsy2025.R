#' @title A guide to load_bdsy()
#' @description
#' - This function automatically loads and optionally installs R packages for the causal inference research group
#' - Designed to streamline course preparation by handling core packages with one call.
#'
#' @param sds_class A string indicating the cohort (e.g., `"ci"`). Must be one of the defined cohort names in `cohort_packages`.
#' @param install_missing Logical. If `TRUE`, missing packages will be installed automatically. If `FALSE`, the function will only attempt to load already-installed packages.
#' @details
#' - **Valid cohort names**: `"ci"`
#' - The function stops with an error and notifies user if:
#'   - The `cohort` argument is unquoted (e.g., `load_bdsy(ci)` instead of `load_bdsy("ci")`).
#'   - The cohort name is not one of the included cohorts in `cohort_packages`.
#'
#' @return
#' NULL
#'
#' @examples
#' \dontrun{
#' # Standard usage (installs missing packages by default):
#' load_bdsy("ci")
#'
#' # Loads without installing missing packages:
#' load_bdsy("ci", install_missing = FALSE)
#' }
#'
#' @importFrom utils install.packages
#' @export
load_bdsy <- function(cohort, install_missing = TRUE) {

  users_cohort <- substitute(cohort)


  if (is.symbol(users_cohort)) {
    stop(
      "\nCohort names must be in quotes.\n",
      "Correct usage: load_bdsy(\"", as.character(users_cohort), "\")", "\n",
      "The only (currently) available cohort in this package is: ci (causal inference)"
    )
  }

  if (!cohort %in% names(cohort_packages)) {
    stop(
      "\nOops! Cohort not found.\n",
      "The only (currently) available cohort in this package is: ci (causal inference)"
    )
  }

  loaded <- setNames(logical(length(cohort)), cohort)
  pkgs <- cohort_packages[[cohort]]


  for (pkg in pkgs) {
    if (!require(pkg, character.only = TRUE, quietly = TRUE)) {
      if (install_missing) {
        message("Installing package:", pkg)
        tryCatch({
          utils::install.packages(pkg, quiet = TRUE)
          if (require(pkg, character.only = TRUE, quietly = TRUE)) {
            loaded[pkg] <- TRUE
            message("Successfully installed and loaded:", pkg)
          } else {
            warning("Installation succeeded but loading failed for:", pkg)
          }
        }, error = function(e) {
          warning("Failed to install", pkg, ": ", e$message)
        })
      }
    } else {
      loaded[pkg] <- TRUE
      message("Package loaded: ", pkg)
    }
  }
}

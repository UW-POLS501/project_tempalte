#' ---
#' title: clean analyses
#' ---
#'
#' This script will clean all your analyses.
#'
library("stringr")

#' Delete all files within a directory, but keep the directory
#'
#' @param x The name of the directory
#' @param ignore Character of regular expression patterns of files to not delete.
clean_dir <- function(x, ignore = "\\.gitkeep") {
  for (file in list.files(clean_dir)) {
    # check if file matches any of the ignore patterns
    if (!any(str_detect(file, ignore))) {
      # if not, delete it - recursively
      unlink(file.path(x, file), recursive = TRUE)
      cat("Deleted ", file.path(x, file), ".\n", sep = "")
    }
  }
}
clean_dir("results")

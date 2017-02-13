#' ---
#' title: Run all scripts
#' ---
#'
#' This script runs all the downloading, cleaning, and analysis
#' scripts in the project.  To the extent possible, this should
#' be able to recreate all your analyses from the raw data and
#' files in the directory.
#'

scripts <- c("src/download.R",
             "src/clean.R",
             "src/anlysis.R"
             # Add or edit this list
)
nscripts <- length(scripts)

for (i in seq_along(scripts)) {
  scriptname <- scripts[[i]]
  cat("Running ", scriptname, "(", i, " of ", nscripts, ")")
  source(scriptname)
}

cat("Finished!")

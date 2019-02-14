## ----chunk-options, include=FALSE----------------------------------------
library("knitr")
opts_chunk$set(eval = FALSE)

## ----getting-started-----------------------------------------------------
#  vignette("wflow-01-getting-started", "workflowr")

## ------------------------------------------------------------------------
#  library("workflowr")
#  # Create project directory and change working directory to this location
#  wflow_start("~/projects/new-project")
#  # Copy the files to the analysis subdirectory of the workflowr project
#  file.copy(from = Sys.glob("~/projects/misc/*Rmd"), to = "analysis")

## ------------------------------------------------------------------------
#  wflow_publish("analysis/*Rmd", "Publish analysis files")

## ------------------------------------------------------------------------
#  library("workflowr")
#  wflow_start("~/projects/mature-project", existing = TRUE)

## ------------------------------------------------------------------------
#  wflow_publish("analysis/*Rmd", "Publish analysis files")

## ------------------------------------------------------------------------
#  library("workflowr")
#  wflow_start("~/projects/my-package", existing = TRUE)

## ------------------------------------------------------------------------
#  # Install the latest version from CRAN
#  install.packages("workflowr")
#  library("workflowr")
#  # Preview the files that would be changed
#  wflow_update()
#  # Update the files
#  wflow_update(dry_run = FALSE)
#  # Republish your analyses with the latest features
#  wflow_publish(republish = TRUE)


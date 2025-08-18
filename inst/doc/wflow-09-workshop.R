## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(eval = FALSE, fig.align = "center")

## ----update-packages, eval=FALSE----------------------------------------------
# update.packages()

## ----config-------------------------------------------------------------------
# library(workflowr)
# wflow_git_config(user.name = "First Last", user.email = "email@domain.com")

## ----rstudio-create-project, eval=TRUE, echo=FALSE, out.width = "50%"---------
knitr::include_graphics("img/rstudio-create-project.png")

## ----rstudio-project-type, eval=TRUE, echo=FALSE, out.width = "50%"-----------
knitr::include_graphics("img/rstudio-project-type.png")

## ----rstudio-workflowr-template, eval=TRUE, echo=FALSE, out.width = "50%"-----
knitr::include_graphics("img/rstudio-workflowr-template.png")

## ----teeth, eval=TRUE---------------------------------------------------------
data("ToothGrowth")
head(ToothGrowth)
summary(ToothGrowth)
str(ToothGrowth)

## ----teeth-write--------------------------------------------------------------
# write.csv(ToothGrowth, file = "data/teeth.csv")

## -----------------------------------------------------------------------------
# write.csv(ToothGrowth, file = "C:/Users/GraceHopper/Documents/myproject/data/teeth.csv")

## -----------------------------------------------------------------------------
# write.csv(ToothGrowth, file = "data/teeth.csv")

## ----open-teeth---------------------------------------------------------------
# wflow_open("analysis/teeth.Rmd")

## ----test-boxplots, eval=TRUE, include=FALSE----------------------------------
data("ToothGrowth")
teeth <- ToothGrowth
boxplot(len ~ dose, data = teeth)
boxplot(len ~ supp, data = teeth)
boxplot(len ~ dose + supp, data = teeth)

## ----test-permute, eval=TRUE, include=FALSE-----------------------------------
# Observed difference in teeth length due to supplement method
mean(teeth$len[teeth$supp == "OJ"]) - mean(teeth$len[teeth$supp == "VC"])
# Permute the observations
supp_perm <- sample(teeth$supp)
# Caclculate mean difference in permuted data
mean(teeth$len[supp_perm == "OJ"]) - mean(teeth$len[supp_perm == "VC"])

## ----workflowr-report-checks, eval=TRUE, echo=FALSE, out.width = "75%"--------
knitr::include_graphics("img/workflowr-report-checks.png")

## ----publish-teeth-growth-----------------------------------------------------
# wflow_publish("analysis/teeth.Rmd", message = "Analyze teeth growth")

## ----workflowr-past-versions-1, eval=TRUE, echo=FALSE, out.width = "75%"------
knitr::include_graphics("img/workflowr-past-versions-1.png")

## ----publish-other-files------------------------------------------------------
# wflow_publish(c("analysis/*Rmd", "data/teeth.csv"), message = "Publish data and other files")

## ----wflow-use-github---------------------------------------------------------
# wflow_use_github("your-github-username")

## ----republish----------------------------------------------------------------
# wflow_publish(republish = TRUE)

## ----wflow-git-push-----------------------------------------------------------
# wflow_git_push()

## ----github-pages-settings, eval=TRUE, echo=FALSE, out.width = "75%"----------
knitr::include_graphics("img/github-pages-settings.png")

## ----workflowr-past-versions-2, eval=TRUE, echo=FALSE, out.width = "75%"------
knitr::include_graphics("img/workflowr-past-versions-2.png")

## ----github-new-repo, eval=TRUE, echo=FALSE, out.width="25%"------------------
knitr::include_graphics("img/github-new-repo.png")


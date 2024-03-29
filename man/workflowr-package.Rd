% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zzz.R
\docType{package}
\name{workflowr-package}
\alias{workflowr}
\alias{workflowr-package}
\title{workflowr: A workflow template for creating a research website}
\description{
The workflowr package helps you create a research website using R Markdown
and Git.
}
\section{Vignettes}{


  Run \code{browseVignettes("workflowr")} to read the package vignettes
  locally. Alternatively you can read the documentation online at
  \url{https://workflowr.github.io/workflowr/}.
}

\section{Main workflowr functions}{


\describe{

\item{\code{\link{wflow_start}}}{Start a workflowr project.}

\item{\code{\link{wflow_build}}}{Build the site to view locally.}

\item{\code{\link{wflow_publish}}}{Publish analyses to include in the
      website.}

\item{\code{\link{wflow_status}}}{Report status of analysis files.}
}
}

\section{Supporting workflowr functions}{


For further information on workflowr, see the help pages for these
functions:

\describe{

\item{\code{\link{wflow_html}}}{More technical details about how
  individual R Markdown files are converted to webpages, and how the
  rendering settings can be customized.}

\item{\code{\link{wflow_site}}}{This help page explains how
  project-wide rendering settings can be customized in the
  \code{_site.yml} file.}
}
}

\section{Package options}{


The following package options affect the default behavior of the workflowr
functions. To permanently set any of these options, add a call to the
function \code{\link[base]{options}} in the file \code{.Rprofile} at the root
of your workflowr project. For example:

\preformatted{
# Do not use Git executable
options(workflowr.sysgit = "")
}

\describe{

\item{workflowr.autosave}{A logical indicating whether workflowr functions
should automatically save files open in the RStudio editor before running.
The default is \code{TRUE}. This requires RStudio 1.1.287 or later. Only
files that have been previously saved are affected. In other words, unnamed
files will be ignored.}

\item{workflowr.sysgit}{The path to the system Git executable. This is
occasionally used to increase the speed of Git operations performed by
workflowr. By default it is set to the first Git executable on the search
path. You can specify a path to a different Git executable. Alternatively you
can disable this behavior entirely by setting it to the empty string \code{""}.}

\item{workflowr.view}{A logical indicating whether workflowr functions should
open webpages for viewing in the browser. The default is set to
\code{\link[base]{interactive}} (i.e. it is \code{TRUE} only if it is an
interactive R session). This option is currently used by
\code{\link{wflow_build}}, \code{\link{wflow_git_push}}, and
\code{\link{wflow_publish}}.}
}
}

\seealso{
Useful links:
\itemize{
  \item \url{https://github.com/workflowr/workflowr}
  \item Report bugs at \url{https://github.com/workflowr/workflowr/issues}
}

}
\author{
\strong{Maintainer}: John Blischak \email{jdblischak@gmail.com} (\href{https://orcid.org/0000-0003-2634-9879}{ORCID})

Authors:
\itemize{
  \item Peter Carbonetto (\href{https://orcid.org/0000-0003-1144-6780}{ORCID})
  \item Matthew Stephens (\href{https://orcid.org/0000-0001-5397-9257}{ORCID})
}

Other contributors:
\itemize{
  \item Luke Zappia (Instructions for hosting with GitLab) [contributor]
  \item Pierre Formont (Support for hosting with Shiny Server) [contributor]
  \item Tim Trice (Instructions for sharing common code) [contributor]
  \item Jiaxiang Li (Function wflow_toc() to create table of contents) [contributor]
  \item Michael J. Kane \email{michael.kane@yale.edu} (\href{https://orcid.org/0000-0003-1899-6662}{ORCID}) (Option suppress_report) [contributor]
  \item Anh Tran (Updated RStudio Project Template) [contributor]
  \item Sydney Purdue (Improved wflow_start() error handling) [contributor]
  \item Giorgio Comai (Added argument only_published to wflow_toc()) [contributor]
  \item Zaynaib Giwa (Multiple enhancements) [contributor]
  \item Xiongbing Jin (Fixed bug in versions table for figures) [contributor]
  \item Yihui Xie (\href{https://orcid.org/0000-0003-0645-5666}{ORCID}) (Design advice; maintenance) [contributor]
}

}
\keyword{internal}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hugo_show_statistics.R
\name{hugo_show_statistics}
\alias{hugo_show_statistics}
\title{Gives the brief overview of the present hugo statistics.}
\usage{
hugo_show_statistics()
}
\value{
Function returns a list containing following components:
\item{creationDate}{beginning of current research,}
\item{objects}{number of saved objects,}
\item{dataSets}{number of loaded data sets,}
\item{plots}{number of saved plots,}
\item{tables}{number of saved tables,}
\item{models}{number of saved models,}
\item{trainedModels}{number of trained models,}
\item{instructions}{number of instructions}
}
\description{
hugo_show_statistics() is a generic function used to produce
summaries of hugo investigation.
}
\examples{
\dontrun{

# firt start hugo investigation
hugo_start_investigation("example")
# use some functions from hugo package
model <- lm(Sepal.Length ~ Petal.Length, data = iris)
hugo_memorise_model(model)
hugo_show_history()
# call hugo_show_statistics() to see hugo summaries of current investigation
hugo_show_statistics()
unlink("example", recursive = TRUE)
}

}
\author{
Joanna Jablonska
}

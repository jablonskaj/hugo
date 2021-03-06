% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hugo_save_investigation.R
\name{hugo_save_investigation}
\alias{hugo_save_investigation}
\title{Save investigation info}
\usage{
hugo_save_investigation(variables = NULL, session_name = NULL,
  envir = .GlobalEnv)
}
\arguments{
\item{variables}{a character vector containing names of important variables to be saved.
By default _variables = NULL_, then all the variables in environment _envir_ are saved.}

\item{session_name}{name of directory in which the session will be saved.
If session_name = NULL, the dafault name is set.}

\item{envir}{an environment to search for objects to be saved. Global Environment by default.}
}
\description{
hugo_save_investigation saves variables and packages used in investigation.
Data is stored in subfolder 'resources/{session_name}' in two separate files: _variables_ and _packages_
Written data can be read back at later date by using function _hugo_continue_investigation_.
}
\examples{
\dontrun{hugo_start_investigation("Example")
model <- lm(Petal.Width~., data = iris)
res <- model$residuals
petal.pred <- predict(model, newdata = iris)
hugo_save_investigation()
# or select variables to be written out and set name of session's directory:
hugo_save_investigation( variables = c('petal.pred', 'res'), session_name = 'IrisModel')
# or select the environment that contains variables for saving
e <- new.env()
e$a <- FALSE
e$b <- "a"
expect_output(hugo_save_investigation(envir = e))
}
}
\author{
Monika Chudek
}

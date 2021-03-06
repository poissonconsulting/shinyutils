% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fix.R
\name{fix_ui}
\alias{fix_ui}
\alias{fix_server}
\title{fix_ui and fix_server}
\usage{
fix_ui(
  fix,
  condition_name,
  ns = NS(NULL),
  add_output_ns = TRUE,
  fix_size = "13px",
  ...
)

fix_server(output, condition_name, condition)
}
\arguments{
\item{fix}{A character string of the fix text.}

\item{condition_name}{A character string of the condition name or, if add_output_ns = FALSE, JS code evaluating a condition (with no server side component).}

\item{ns}{A function of the namespace.}

\item{add_output_ns}{A flag indicating whether to add output and namespace to condition string.}

\item{fix_size}{A character string of the fix text size.}

\item{...}{arguments passed to conditionalPanel}

\item{output}{internal}

\item{condition}{A shiny reactive evaluating to a flag.}
}
\description{
fix_ui and fix_server
}
\keyword{internal}

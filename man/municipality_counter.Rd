% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/municipality_counter.R
\name{municipality_counter}
\alias{municipality_counter}
\title{Municipality counter}
\usage{
municipality_counter(mutations, dates, geo_level = "ch")
}
\arguments{
\item{mutations}{A tibble containing the municipality mutations inventory
(see \code{\link{import_CH_municipality_inventory}})}

\item{dates}{A \link{Date} object vector}

\item{geo_level}{Either "ch" or "cantons".}
}
\value{
A tibble with the municipality count per date and specified
  geography.
}
\description{
Count the municipalities for a set of dates. Either at the national or
cantonal level. See vignette for details.
}

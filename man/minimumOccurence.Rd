% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/minimumOccurence.R
\docType{methods}
\name{minimumOccurence}
\alias{minimumOccurence}
\alias{minimumOccurence,GPM-method}
\alias{minimumOccurence,data.frame-method}
\title{Select features based on minimum occurence across unique locations}
\usage{
\S4method{minimumOccurence}{GPM}(x, resample = 100, thv = 20)

\S4method{minimumOccurence}{data.frame}(x, selector, occurence = "yes",
  resample = 100, thv = 20)
}
\arguments{
\item{NONE}{}
}
\value{
Columnnames of the features occuring at least on n locations on 
average as part of the meta data section of the gpm object

Columnnames of the features occuring at least on n locations on 
average.
}
\description{
Select features (e.g. species) based on their minimum occurence across unique
locations with multiple samples per location and return the feature names 
which occure at least on n locations on average within multiple resamples 
withour replacement.
}
\details{
NONE
}
\examples{
# Not run

}
\references{
NONE
}
\seealso{
NONE
}


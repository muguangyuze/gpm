% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trainModel.R
\docType{methods}
\name{trainModel}
\alias{trainModel}
\alias{trainModel,GPM-method}
\alias{trainModel,data.frame-method}
\title{Model training and performance using cross-validation}
\usage{
\S4method{trainModel}{GPM}(x, grabs = 1, resample = 100)

\S4method{trainModel}{data.frame}(x, response, independent, resamples,
  mode = c("rfe", "ffs"), n_var = NULL, response_nbr = NULL,
  resample_nbr = NULL, mthd = "rf", seed_nbr = 11, cv_nbr = 2,
  var_selection = c("sd", "indv"), filepath_tmp = NULL)
}
\arguments{
\item{x}{An object of class gpm or data.frame}

\item{response}{The column name(s) of the response variable(s)}

\item{independent}{The column ID of the predictor, i.e. independent 
variable(s) in the dataset}

\item{resamples}{The list of the resamples containing the individual row 
numbers (resulting from function \code{\link{resamplingsByVariable}})}

\item{mode}{Variable selection mode, either recursive feature elimination 
("rfe") or forward feature selection ("ffs)}

\item{n_var}{Vector holding the number of variables used for the recursive 
feature elimination iterations; must not be continous (e.g. c(1:10, 20, 30))}

\item{response_nbr}{Response ID to be computed; only relevant if more than
one response variable is present and a model should not be built for each of
them}

\item{resample_nbr}{Resample ID to be computed; only relevant if the model
training should not run over all resamples}

\item{mthd}{Core method used for the model (e.g. "rf" for random forest)}

\item{seed_nbr}{Specific seed to be to ensure reproducability}

\item{cv_nbr}{Specific cross validation folds to be used for model tuning 
within each forward or backward feature selection/elimination step}

\item{var_selection}{Select final number of variables based on a standard
deviation statistic ("sd", more conservative) or by the actual best number
("indv")}

\item{filepath_tmp}{If set, intermediate model results during the variable
selection are writen to disc; if the procedure stops for some reason, the
already computed results can be read in again which saves computation time
(e.g. after an accidential shutdown etc.)}
}
\value{
NONE

A layer within the gpm object with the model training information for
each response variable and all resamplings.

Trained model for each response variable and all resamplings.
}
\description{
Train a model and estimate the model performance using multiple resamplings 
each devided into training and independent subsets. Training subsets are 
further divided into k-fold cross-validation samples for model tuing. Testing
sampels are used for the independent validation of the final model. This
procedure is repeated for each resampling provided.
}
\details{
The backfard feature selection is based on the implementation of
the caret::rfe function. The forward feature selection is implemented from
scratch. The latter stops if the error statistics get worse after a first
optimum is reached. For model training, the respective caret functions are
used, too.
}
\examples{
\dontrun{
#Not run
}

}
\references{
The function uses functions from:
 Max Kuhn. Contributions from Jed Wing, Steve Weston, Andre Williams, 
 Chris Keefer, Allan Engelhardt, Tony Cooper, Zachary Mayer, Brenton Kenkel, 
 the R Core Team, Michael Benesty, Reynald Lescarbeau, Andrew Ziem, 
 Luca Scrucca, Yuan Tang and Can Candan. (2016). caret: Classification and 
 Regression Training. https://CRAN.R-project.org/package=caret
}
\seealso{
NONE
}


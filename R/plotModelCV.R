#' Plot cross-validated variable importance
#' 
#' @description 
#' This function plots variable imporatnce for cross-validated 
#' \code{\link[caret]{rfe}} variable selection classes or \code{\link[caret]{train}} classes.
#'  It uses the k cross-validations to compute the mean +/- sd error or 
#'  standard deviation metric.
#' 
#' @param model A rfe or train object. See \code{\link[caret]{rfe}} and \code{\link[caret]{train}}
#' @param metric the metric to be used. Note this needs to be the metric used 
#' to calculate the \code{\link[caret]{rfe}} or  \code{\link[caret]{train}} model
#' @param tuningValue The tuning value which is depicted on the x axis.
#' For rfe models default is "Variables", the number of variables.
#' @param xlim the xlim for the plot
#' @param ylim the ylim for the plot  
#' @param sderror If TRUE then standard error is calculated. If FALSE then
#' standard deviations are used
#' @param grid Print grid or not
#' 
#' @return
#' a trellis object
#' 
#' @note if rfe is used as model, then returnResamp = "all" must be set in rfe training
#' @export plotModelCV
#' @aliases plotModelCV
plotModelCV <- function(model,
                        metric = model$metric,
                        tuningValue = "Variables",
                        xlim = "minmax",
                        ylim = "minmax",
                        sderror=FALSE, 
                        grid=TRUE) {
  
  data <- as.data.frame(model$resample)
  
  if (!tuningValue %in% names(data)){
    stop ("tuningValue is not available in model results")
  }
  
  names(data)[which(names(data)==tuningValue)]="tuningValue"
  
  sdv <- c()
  means <- c()
  
  for (i in unique(data$tuningValue)) {
    if(!sderror){
      sdv <- c(sdv,sd(eval(parse(text=paste("data$",metric)))[data$tuningValue==i]))
    }
    if(sderror){
      sdv <- c(sdv,se(eval(parse(text=paste("data$",metric)))[data$tuningValue==i]))
    }
    means <- c(means,mean(eval(parse(text=paste("data$",metric)))
                          [data$tuningValue==i]))
  }
  
  if (xlim == "minmax"){
    xlim <- c(min(data$tuningValue) - 0.4, max(data$tuningValue) + 0.4)
  }
  if (ylim=="minmax"){
    ylim <- c(min(means - sdv) - 0.1 * min(means - sdv),
              max(means + sdv) + 0.1 * min(means - sdv))
  }
  
  if(metric=="Rsquared"){metric="R-squared"}
  xyplot(means~unique(data$tuningValue),
         ylim=ylim,
         xlim=xlim,
         xlab=tuningValue,
         ylab=paste0(metric," (Cross-Validation)"),
         panel = function(x, y, ...){
           panel.polygon(c(unique(data$tuningValue),rev(unique(data$tuningValue))),
                         c(means+sdv, rev(means-sdv)), col="grey80", 
                         border=FALSE)
           panel.xyplot(x,y,type=c("b","g"),col="black",pch=16, grid=grid)
         }
  )
}

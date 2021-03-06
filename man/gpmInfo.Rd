% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gpmInfo.R
\name{gpmInfo}
\alias{addGPMDataLayer}
\alias{addGPMLog}
\alias{addGPMMetaEntry}
\alias{addGPMMetaParam}
\alias{getGPMBID}
\alias{getGPMBTK1}
\alias{getGPMBTK2}
\alias{getGPMBandInfo}
\alias{getGPMCalib}
\alias{getGPMDATE}
\alias{getGPMDataLayers}
\alias{getGPMESD}
\alias{getGPMESUN}
\alias{getGPMLMAX}
\alias{getGPMLMIN}
\alias{getGPMLNBR}
\alias{getGPMLayerfromData}
\alias{getGPMLog}
\alias{getGPMMeta}
\alias{getGPMMetaLayer}
\alias{getGPMPRAD}
\alias{getGPMParam}
\alias{getGPMRADA}
\alias{getGPMRADM}
\alias{getGPMREFA}
\alias{getGPMREFM}
\alias{getGPMRadMax}
\alias{getGPMRadMin}
\alias{getGPMRefMax}
\alias{getGPMRefMin}
\alias{getGPMRes}
\alias{getGPMSAZM}
\alias{getGPMSELV}
\alias{getGPMSID}
\alias{getGPMSZEN}
\alias{getGPMSensor}
\alias{getGPMSensorGroup}
\alias{getGPMSensorInfo}
\alias{getGPMSpectrum}
\alias{getGPMType}
\alias{getGPMlcde}
\alias{getGPMlcdeCalib}
\alias{getGPMlcdeSolar}
\alias{getGPMlcdeSolarCalib}
\alias{getGPMlcdeSres}
\alias{getGPMlcdeThermal}
\alias{getGPMlcdeThermalCalib}
\alias{getGPMlcdeType}
\alias{gpmInfo}
\title{Get or access gpm object information used by various functions}
\usage{
getGPMDataLayers(GPM)

getGPMMeta(GPM)

getGPMLog(GPM)

addGPMMetaParam(GPM, meta_param)

addGPMMetaEntry(GPM, meta_param)

addGPMLog(GPM, info = NA_character_, in_lcde = NA_character_,
  out_lcde = NA_character_)

addGPMDataLayer(GPM, lcde, data, meta_param, info, in_lcde)

getGPMParam(GPM, param, lcde, return_lcde = TRUE)

getGPMlcde(GPM)

getGPMBID(GPM, lcde)

getGPMSID(GPM)

getGPMSensor(GPM)

getGPMSensorGroup(GPM)

getGPMSensorInfo(GPM)

getGPMSpectrum(GPM, lcde)

getGPMlcdeSolar(GPM)

getGPMlcdeThermal(GPM)

getGPMRes(GPM, lcde)

getGPMType(GPM, lcde)

getGPMCalib(GPM, lcde)

getGPMlcdeType(GPM, lcde, id)

getGPMlcdeSres(GPM, lcde, id)

getGPMlcdeCalib(GPM, lcde, id)

getGPMlcdeSolarCalib(GPM, lcde, id)

getGPMlcdeThermalCalib(GPM, lcde, id)

getGPMBandInfo(GPM, lcde, return_calib = TRUE)

getGPMRadMax(GPM, lcde)

getGPMRadMin(GPM, lcde)

getGPMRefMax(GPM, lcde)

getGPMRefMin(GPM, lcde)

getGPMESD(GPM)

getGPMESUN(GPM, lcde)

getGPMSZEN(GPM, lcde)

getGPMSAZM(GPM, lcde)

getGPMSELV(GPM, lcde)

getGPMMetaLayer(GPM, lcde)

getGPMLayerfromData(GPM, lcde, nbr)

getGPMLNBR(GPM, lcde)

getGPMLMIN(GPM, lcde)

getGPMLMAX(GPM, lcde)

getGPMRADA(GPM, lcde)

getGPMRADM(GPM, lcde)

getGPMREFA(GPM, lcde)

getGPMREFM(GPM, lcde)

getGPMBTK1(GPM, lcde)

getGPMBTK2(GPM, lcde)

getGPMDATE(GPM, lcde)

getGPMPRAD(GPM, lcde)
}
\arguments{
\item{lcde}{band code}

\item{gpm}{GPM object (see \code{\link{gpm}})}
}
\value{
Objects of respective type (see \code{\link{GPM}})
}
\description{
Get information from class GPM
}
\details{
The functions are generally self explaining in that sence that
\code{get*} returns the respective information and \code{set*} sets the
respective information from/in the GPM object.
 
\code{addGPMLog} adds a log entry to the GPM object
}
\examples{
data(abies_alba)
meta <- createGPMMeta(dataset = abies_alba, 
                      selector = 1, response = c(16:481), meta = c(2: 15))
alb <- gpm(abies_alba, meta)

}


#' Load all packages used in the book
#'
#' @details Currently, the loaded packages are:
#' \itemize{
#'   \item{tidyverse}
#'   \item{brms}
#'   \item{ggsignif}
#'   \item{gridExtra}
#'   \item{Rlab}
#'   \item{rcartocolor}
#'   \item{extraDistr}
#'   \item{boot}
#'   \item{naniar}
#' }
#' @export
load_libraries <- function() {
    suppressPackageStartupMessages(library(tidyverse))
    suppressPackageStartupMessages(library(brms))
    suppressPackageStartupMessages(library(ggsignif))
    suppressPackageStartupMessages(library(gridExtra))
    suppressPackageStartupMessages(library(Rlab))
    suppressPackageStartupMessages(library(rcartocolor))
    suppressPackageStartupMessages(library(extraDistr))
    suppressPackageStartupMessages(library(boot))
    suppressPackageStartupMessages(library(naniar))
}

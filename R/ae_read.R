#' Read CSV duplicate
#'
#' @param path to file name
#'
#' @return \code{tibble}
#' @export
#'@importFrom readr read_csv
#' @examples
#' csv=file.path("c:","users","tatav","OneDrive", "Desktop" , "sas2r","clinicalfd","data-raw","inst","extdata", "ae.csv")
#' s_read(csv)
s_read = function(path){
  readr::read_csv(path)
}

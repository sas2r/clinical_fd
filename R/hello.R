#' My Hello world
#'
#' @param x The name of the person
#'
#' @return The Output from the \code{link{print}}
#' @export
#'
#' @examples
#' hello("Ram")
#' \dontrun{
#' hello("Ram")
#' }
hello <- function(x){
  print(paste0( "This is my R world ", x ,  ", to my package!" ))
}


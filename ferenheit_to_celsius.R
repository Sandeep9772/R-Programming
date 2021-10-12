#' Fahrenheit to Celsius conversion
#'
#' @param temp_F numeric
#'
#' @return numeric
#' @export
#'
#' @examples
#' Fahrenheit_to_Celsius(32) #returns 0
Fahrenheit_to_Celsius <- function(temp_F) {
  temp_C  <-  (temp_F - 32)*5/9
  return(temp_C)
}

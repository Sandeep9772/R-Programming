#' Celsius to Kelvin conversion
#'
#' @param temp_C numeric
#'
#' @return numeric
#' @export
#'
#' @examples
#' Celsius_to_Kelvin(10) # returns 283.15K
Celsius_to_Kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  return(temp_K)
}

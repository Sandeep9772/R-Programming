#' Fahrenheit to Kelvin conversion
#'
#' @param temp_F numeric
#'
#' @return numeric
#' @export
#'
#' @examples
#' Fahrenheit_to_Kelvin(32) #returns 273.15K
Fahrenheit_to_Kelvin <- function(temp_F) {
  Celsius_to_Kelvin(Fahrenheit_to_Celsius(temp_F))

}

#' Kelvin to Fahrenheit conversion
#'
#' @param temp_K numeric
#'
#' @return numeric
#' @export
#'
#' @examples
#' Kelvin_to_Fahrenheit(273.15) # returns 32F
Kelvin_to_Fahrenheit <- function(temp_K) {
  Celsius_to_Fahrenheit(Kelvin_to_Celsius(temp_K))
}

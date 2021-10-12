#' Celsius to Farenheit conversion test
#'
#' @param temp_C numeric
#'
#' @return numeric
#' @export
#'
#' @examples
#' Celsius_to_Fahrenheit(0) # results in 32F
Celsius_to_Fahrenheit <- function(temp_C) {
  if(is.numeric(temp_C)){
  temp_F  <-  9*temp_C/5 + 32
  return(temp_F)
  }
  else{
    print("Error! "+temp_C+"is not a numeric")
  }
}

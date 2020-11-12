#' Illustration of Kaya_Equation
#' @param pop : population size (in millions)
#' @param gdp: GDP per capita (in 1000$/person)
#' @param enInt: Energy Intensity (in Gigajoule/$1000GDP). Energy Intensity is t
#' he energy needed to produce a certainamount of economic value.
#' @param carbInt  Carbon Intensity (in tonnes CO2/Gigajoule).
#' Carbon Intensity is the CO2 emitted for produced energy.
#' This number depends on the energy mix used (coal, solar, . . . ).
#' @return numeric number co2 as Kaya Identity
#' examples Kaya_Equation(pop=82.4,gdp=44,enInt = 5,carbInt = 0.05)


Kaya_Equation <- function(pop,gdp,enInt,carbInt){
  return( co2=pop*gdp*enInt*carbInt)
}




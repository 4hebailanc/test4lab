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
#' @import checkmate
#' @import testthat

library(checkmate)
library(testthat)
Kaya_Equation <- function(pop = 82.4, gdp = 44, enInt = 5, carbInt = 0.05, output_type = "CO2") {
  assert_choice(output_type, c("CO2", "C"))
  assert_numeric(c(pop, gdp, enInt, carbInt), lower = 0)
  if (output_type == "CO2") {
    return(co2 = pop * gdp * enInt * carbInt)
  }

  if (output_type == "C") {
    return(c = pop * gdp * enInt * carbInt / 3.67)
  }
}


# Unit Test
expect_that(Kaya_Equation(pop = 82.4, gdp = 44, enInt = 5, carbInt = 0.05), equals(906.4))
expect_error(c(Kaya_Equation(pop = -1), Kaya_Equation(gdp = -1)))
# output_type test
expect_equal(Kaya_Equation(pop = 82.4, gdp = 44, enInt = 5, carbInt = 0.05,output_type = 'C'),246.9755,tolerance=0.002)


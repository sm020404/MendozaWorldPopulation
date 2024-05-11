#' Function
#'
#' This function generates a plot of the population estimate for a country
#'
#' @param country Country name as a string
#' @return A line graph showing the population estimates
#' @examples
#' # example code
#' CountryPopulation('United States of America')
#' CountryPopulation('Germany')
#' @export
#'
CountryPopulation <- function(country_name) {
country_data <- WorldPopulation %>%
  filter(CountryName == country_name) %>%
  pivot_longer(
    cols = -CountryName,
    names_to = "Year",
    values_to = "Population"
  ) %>%
  mutate(
    Year = as.numeric(Year),
    Population = as.numeric(Population)
  )

plot <- ggplot(country_data, aes(x = Year, y = Population)) +
  geom_line() +
  labs(
    title = country_name,
    x = "Year",
    y = "Population"
  )


return(plot)
}

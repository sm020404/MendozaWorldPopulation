library(tidyverse)
library(readxl)

WorldPopulation <- WorldPopulation %>% filter(Type == "Country/Area") %>% select(`Region, subregion, country or area *`,8:ncol(WorldPopulation)) %>%rename(CountryName = `Region, subregion, country or area *`)

usethis::use_data(WorldPopulation, overwrite = TRUE)

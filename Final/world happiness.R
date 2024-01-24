library(tidyverse)
library(readxl)
library(tidyr)

countries <- c("United Kingdom", 
               "United States",
               "Finland", 
               "Australia",
               "Belgium",
               "Switzerland",
               "Denmark",
               "Spain",
               "France",
               "Greece",
               "Italy",
               "Japan",
               "Netherlands",
               "Norway",
               "New Zealand",
               "Poland",
               "Portugal",
               "Slovak Republic",
               "Sweden",
               "India",
               "Ukraine",
               "China",
               "Thailand",
               "Hungary",
               "Argentina")

#World Happiness------------------
whr <- read_excel("data/whr.xls")%>%
  rename(country="Country name",
         value = "Ladder score",
         gdppc = "Explained by: Log GDP per capita",
         support = "Explained by: Social support",
         life_expectancy = "Explained by: Healthy life expectancy",
         freedom="Explained by: Freedom to make life choices",
         generosity="Explained by: Generosity",
         perception="Explained by: Perceptions of corruption")%>%
  select(country,value,gdppc, support,life_expectancy,freedom,generosity,perception)%>%
  filter(country %in% countries)%>%
  mutate(country = fct_reorder(country, value))

df <- melt(whr, id.vars = "country")%>%
  filter(variable != "value")




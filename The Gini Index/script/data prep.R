#Gini Index----
library(tidyverse)
library(readr)
library(forcats)

#importing & cleaning data in 2019------------
gini<-read.csv("data/gini.csv",skip=4)%>%
  select('Country.Name','X2020')%>%
  rename(country='Country.Name',
         gini='X2020')%>%
  filter(!is.na(gini))%>%
  mutate(country = fct_reorder(country, gini))

#evolution of Gini----------------------------
evo<-read_csv("data/gini.csv", col_types = cols(`1960` = col_double(), 
                                                `1961` = col_double(), `1962` = col_double(), 
                                                `1963` = col_double(), `1964` = col_double(), 
                                                `1965` = col_double(), `1966` = col_double(), 
                                                `1967` = col_double(), `1968` = col_double(), 
                                                `1969` = col_double(), `1970` = col_double(), 
                                                `1972` = col_double(), `1974` = col_double(), 
                                                `1976` = col_double(), `1978` = col_double(), 
                                                ...68 = col_double()), skip = 4)%>%
  select(-'Country Code',-'Indicator Name',-'Indicator Code')%>%
  rename(country='Country Name')%>%
  filter(country=='Spain')%>%
  gather(year,gini,2:64)%>%
  mutate(year=as.numeric(year))%>%
  filter(!is.na(gini))%>%
  select('country','year','gini')
  
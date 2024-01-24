library(lubridate)
library(tidyverse)
library(zoo)

#adj------------------------
adj <- read_csv("data/laborsa.csv")%>%
  select(TIME, Measure, Value) %>%
  rename(date  = TIME) %>%
  rename(adj   = Measure) %>%
  rename(unemp = Value) %>%
  mutate(date = paste(date, "01", sep="-")) %>%
  mutate(date = as.Date(date, format = "%Y-%m-%d")) %>%
  mutate(trend = (lag(unemp, n=2)   + lag(unemp, n=1)   + lag(unemp, n=0)  +
                    lead(unemp, n=2)  + lead(unemp, n=1) +
                    unemp)/5)%>%
  mutate(diff = unemp - trend)

#data----------------------
data<-read_csv('data/labor.csv')%>%
  select(TIME, Measure, Value) %>%
  rename(date  = TIME) %>%
  rename(adj   = Measure) %>%
  rename(unemp = Value) %>%
  mutate(adj  = ifelse(adj == 'Level, rate or quantity series', 'No seasonal adjustment', 'Seasonal adjustment')) %>%
  mutate(date = paste(date, "01", sep="-")) %>%
  mutate(date = as.Date(date, format = "%Y-%m-%d"))



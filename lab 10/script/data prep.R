library(tidyverse)
library(readxl)


forex <- read_excel("data/Exchange_Rate_Report.xlsx", 
                                   sheet = "EXCHANGE_RATE_REPORT", skip = 2)%>%
  rename(date='Date',
         rate='U.K. pound   (GBP)',
         usd='U.S. dollar   (USD)')%>%
  select(date,rate)%>%
  mutate(date=as.Date(date,format='%Y'))%>%
  filter(!is.na(rate))%>%
  mutate(g=(rate - lag(rate, n = 1))/lag(rate, n = 1))%>%
  filter(!is.na(g))
  

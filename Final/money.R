library(tidyverse)
library(readxl)
#Money-------------
euro <- read_excel("data/Exchange_Rate_Report.xlsx", skip = 2)%>%
  rename(date='Date',
         euro='Euro   (EUR)',
         chf ='Swiss franc   (CHF)',
         gbp ='U.K. pound   (GBP)' )%>%
  select(date,euro)%>%
  mutate(date=as.Date(date,format="%Y-%m-%d"))%>%
  filter(!is.na(euro))%>%
  mutate(g=(euro - lag(euro, n = 1))/lag(euro, n = 1))%>%
  filter(!is.na(g))

gbp<-read_excel("data/Exchange_Rate_Report.xlsx", skip = 2)%>%
  rename(date='Date',
         euro='Euro   (EUR)',
         chf ='Swiss franc   (CHF)',
         gbp ='U.K. pound   (GBP)' )%>%
  select(date,gbp)%>%
  mutate(date=as.Date(date,format="%Y-%m-%d"))%>%
  filter(!is.na(gbp))%>%
  mutate(g=(gbp - lag(gbp, n = 1))/lag(gbp, n = 1))%>%
  filter(!is.na(g))

forex<-read_excel("data/Exchange_Rate_Report.xlsx", skip = 2)%>%
  rename(date='Date',
         euro='Euro   (EUR)',
         chf ='Swiss franc   (CHF)',
         gbp ='U.K. pound   (GBP)' )%>%
  mutate(date=as.Date(date,format="%Y-%m-%d"))%>%
  filter(!is.na(euro))%>%
  filter(!is.na(gbp))

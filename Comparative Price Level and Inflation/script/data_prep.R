#data prep----------
library(tidyverse)
library(readr)

##importing & cleaning data-----------------------
data<-read.csv('data/prc_hicp_midx__custom_8400741_linear.csv')%>%
  select("coicop","geo","TIME_PERIOD",'OBS_VALUE')%>% 
  rename(country = "geo",
         date    = "TIME_PERIOD",
         price   = 'OBS_VALUE',
         idx     = 'coicop') %>% 
  mutate(date=paste(date,'01',sep='-'))%>%
  mutate(date=as.Date(date,format='%Y-%m-%d'))%>%
  mutate(price1=lag(price,n=12))%>%
  mutate(pi=(price-price1)/price1)%>%
  filter(date>'2018-01-01')%>%
  filter(country %in% c('ES','EU'))

cpl<-read.csv(('data/cpl.csv'))%>%
  select("geo","TIME_PERIOD",'OBS_VALUE')%>% 
  rename(country = "geo",
         date    = "TIME_PERIOD",
         price   = 'OBS_VALUE',)%>%
  filter(date>2018)

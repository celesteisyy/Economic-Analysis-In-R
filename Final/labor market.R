#Labor Force Market--------------------------
library(tidyverse)
library(zoo)
##unemployment rate for gender---------------
gender <- read_csv("data/gender.csv")%>%
  select(TIME, Measure,Subject, Value)%>%
  rename(date    = TIME,
         sub     = Subject,
         adj     = Measure,
         une = Value)%>%
  mutate(adj  = ifelse(adj == 'Level, rate or quantity series', 'No seasonal adjustment', 'Seasonal adjustment'))%>%
  mutate(sex  = ifelse(sub == 'Unemployment rate, Aged 15 and over, Females', 'Females', 'Males'))%>%
  select(date,sex,une)%>%
  mutate(date = as.yearqtr(date,format ="%Y-Q%q"))

##labor force--------------------------------
data<-read_csv('data/labor.csv')%>%
  select(TIME, Measure, Value) %>%
  rename(date  = TIME) %>%
  rename(adj   = Measure) %>%
  rename(unemp = Value) %>%
  mutate(adj  = ifelse(adj == 'Level, rate or quantity series', 'No seasonal adjustment', 'Seasonal adjustment')) %>%
  mutate(date = paste(date, "01", sep="-")) %>%
  mutate(date = as.Date(date, format = "%Y-%m-%d"))

##inactive force------------------------------
inactive <- read_csv("data/inactive.csv")%>%
  select(TIME,Subject,Value) %>%
  rename(date  = TIME,
         inact = Value,
         sub= Subject)%>%
  mutate(sex = ifelse(sub == 'Inactivity rate, Aged 15-64, Females', 'Females', 'Males')) %>%
  mutate(date = as.yearqtr(date,format ="%Y-Q%q"))%>%
  select(date,inact,sex)

##Job vacancy--------------------------------
vacancy <- read_csv("data/vacancy.csv")%>%
  select(geo,TIME_PERIOD, OBS_VALUE)%>%
  rename(country = geo,
         date = "TIME_PERIOD",
         rate = "OBS_VALUE")%>%
  mutate(date = as.yearqtr(date,format ="%Y-Q%q"))%>%
  filter(date>="2010 Q1")%>%
  filter(country %in% c('UK','ES','EA19'))

##working age population---------------------
wap <- read_csv("data/wap.csv")%>%
  select(Subject,TIME,Value)%>%
  rename(value =Value,
         date = TIME,
         sub = Subject)%>%
  mutate(sex = ifelse(sub == 'Working age population, Aged 15 and over, Females', 'Females', 'Males')) %>%
  mutate(date = as.yearqtr(date,format = "%Y-Q%q"))%>%
  select(date,value,sex)

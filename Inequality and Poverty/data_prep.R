#data prep-------------
library(tidyverse)
library(readr)

df <- read_delim("data/WID_Data_30112023-093225.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE, skip = 1)%>%
  rename(percentile='Percentile',
         date='Year',
         value='sptinc_z_ES\nPre-tax national income \nTop 10% | share\nSpain')
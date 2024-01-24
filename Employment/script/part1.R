#the evolution of unemployment rate-------------
library(tidyverse)
library(readr)
library(lubridate)

df<-read.csv('C:/Users/fr23045/OneDrive - University of Bristol/ECON LAB/lab 7/data/AURUKM.csv')%>%
  rename(date=DATE,
         unemp=AURUKM)%>%
  mutate(date=as.Date(date,format='%Y-%m-%d'))%>%
  filter(date>='1980-01-01')%>%
  mutate(trend = (lag(unemp, n=4)   + lag(unemp, n=3)   + lag(unemp, n=2)  + lag(unemp, n=1)  +
                    lead(unemp, n=4)  + lead(unemp, n=3)  + lead(unemp, n=2) + lead(unemp, n=1) +
                    unemp)/9)

#plotting------------------------------------------------
ggplot(df, aes(x = date, y = trend))+
  geom_line(stat='identity', lwd = 1)+
  scale_x_date(date_breaks = "4 month", date_labels = "%m-%Y")+
  xlab("") +
  ylab("Unemp. rate (%)") +
  labs(title = "Trend component",
       caption = "")+
  theme(plot.title = element_text(size=22),
        plot.subtitle = element_text(size=16),
        legend.title = element_blank(),
        legend.text=element_text(size=14),
        legend.position="bottom",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 18),
        strip.background = element_blank(),
        axis.text.x=element_text(angle=45, hjust=1, size = 12),
        axis.text.y=element_text(size = 12),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())

#Labor Force-------------------
library(ggpubr)
library(ggplot2)
library(dplyr)
library(babynames)
library(viridis)
library(hrbrthemes)
library(plotly)
##working age-----------------
p1<-ggplot(wap, aes(x = date, y = value, fill = sex))+
  geom_area()+
  theme(plot.title = element_text(size=20),
        legend.title = element_blank(),
        legend.position="bottom",
        plot.caption = element_text(size=15, hjust = 0),
        plot.subtitle = element_text(size=15, hjust = 0),
        axis.title = element_text(size = 15),
        strip.background = element_blank(),
        axis.text.x=element_text(angle=45, hjust=1),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        legend.key = element_rect(fill = NA),
        text=element_text(family="Palatino"),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background = element_rect(fill = "transparent", colour = NA))+
  xlab("Year") +
  ylab("Working Age Population (thousands)") +
  labs(title = "Working Age Population in Spain",
       subtitle='Grouped by gender, seasonal adjustment, from 2000 Q1 to 2023 Q2',
       caption = "Source:OECD, Short-Term Labour Market Statistics: Working Age Population")

##Inactive rate & Unemployment by gender---------------
p2<-ggplot(inactive, aes(x = date, y = inact, color = sex))+
  geom_line(lwd=1)+
  theme(plot.title = element_text(size=20),
        legend.title = element_blank(),
        legend.position="none",
        plot.caption = element_text(size=13, hjust = 0),
        plot.subtitle = element_text(size=15, hjust = 0),
        axis.title.y = element_text(size = 13),
        strip.background = element_blank(),
        axis.text.x=element_text(size=13,angle=45, hjust=1),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        legend.key = element_rect(fill = NA),
        text=element_text(family="Palatino"),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background = element_rect(fill = "transparent", colour = NA))+
  xlab("Year") +
  ylab("Inactive rate (%)") +
  labs(title = "Inactive Rates in Spain",
       subtitle='Grouped by gender, seasonal adjustment, from 2000 Q1 to 2023 Q2',
       caption = "Source:OECD, Short-Term Labour Market Statistics")

p3<-ggplot(gender, aes(x = date, y = une, color = sex))+
  geom_line(stat='identity',lwd=1)+
  theme(plot.title = element_text(size=20),
        legend.title = element_blank(),
        legend.position="none",
        plot.caption = element_text(size=15, hjust = 0),
        plot.subtitle = element_text(size=15, hjust = 0),
        axis.title.y = element_text(size = 13),
        strip.background = element_blank(),
        axis.text.x=element_text(size=13,angle=45, hjust=1),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        legend.key = element_rect(fill = NA),
        text=element_text(family="Palatino"),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background = element_rect(fill = "transparent", colour = NA))+
  xlab("Year") +
  ylab("Unemployment rate (%)") +
  labs(title = "Unemployment rates in Spain",
       subtitle='Grouped by gender, seasonal adjustment, from 2000 Q1 to 2023 Q2',
       caption = "")

#Combining fig 1,2-------------
cowplot::plot_grid(p3,p2,nrow = 2, align = "v")


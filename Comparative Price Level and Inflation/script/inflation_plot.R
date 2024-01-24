ggplot(data  %>% filter(idx == 'CP00',country == 'ES'), aes(x = date, y = price))+
  geom_line(stat='identity', lwd = 1)+
  scale_x_date(date_breaks = "6 month", date_labels = "%m-%Y")+
  xlab("") +
  ylab("Inflation rate (%)") +
  labs(title = "Monthly Inflation in Spain",
       subtitle = "Measures monthly annual change in the HICP, Jan. 2018 - Oct. 2023.",
       caption = "Source: Eurostat, series prc_hicp_midx.")

ggplot(data %>% filter(country == 'ES'), aes(x = date, y = pi, color = idx))+
  geom_line(stat='identity',lwd=1)+
  theme(plot.title = element_text(size=12),
      plot.subtitle = element_text(size=9),
      legend.title = element_blank(),
      legend.position="bottom",
      plot.caption = element_text(size=9, hjust = 0),
      axis.title = element_text(size = 11),
      strip.background = element_blank(),
      axis.text.x=element_text(angle=45, hjust=1),
      strip.placement = "outside",
      panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
      panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
      legend.key = element_rect(fill = NA),
      text=element_text(family="Palatino"),
      panel.background = element_rect(fill = "transparent", colour = NA),
      plot.background = element_rect(fill = "transparent", colour = NA))+
  scale_x_date(date_breaks = "6 month", date_labels = "%m-%Y")+
  xlab("") +
  ylab("Inflation rate (%)") +
  labs(title = "Monthly Inflation in Spain by Main Aggregates",
       subtitle = "Measures monthly annual change in the HICP, Jan. 2018 - Dec. 2022.",
       caption = "Source: Eurostat, series prc_hicp_midx.")+
  scale_color_discrete(labels=c('All items-HICP', 'Food', 'Energy', 'HICP ex. energy'))


ggplot(cpl, aes(x = date, y = price, color=country))+
  geom_line(stat='identity',lwd=1)+
  xlab("") +
  ylab("Price Level") +
  labs(title = "Comparable Price Levels in Spain, the United Kingdom and EU-27 countries",
       subtitle = "Expressed in relation to EU27_2020=100, 2018-2022.",
       caption = "Source: Eurostat, series prc_ppp_ind.")+
  scale_color_discrete(labels=c('Spain','EU-27 countries','the UK'))


#forex--------------
##evolution--------
ggplot(forex,aes(x=date,y=euro,linetype="EUR"))+
  geom_line(aes(x=date,y=gbp,color="GBP"))+
  geom_line(aes(x=date,y=chf,color="CHF"))+
  geom_line(stat='identity', lwd = 1)+
  scale_x_date(date_breaks = "24 month", date_labels = "%Y")+
  xlab("Year") +
  ylab("X/USD") +
  labs(title = "EUR, CHF, and GBP against the U.S. dollar, 2000-2023",
       subtitle="Exchange rate are presented in currency units per U.S. dollar",
       caption = "Source: International Monetary Fund. Series: Representative rates.")+
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


##comp-------------------------
pa<-ggplot(euro, aes(x = date, y = g))+
  geom_line(lwd = 0.5)+
  scale_x_date(date_breaks = "24 month", date_labels = "%Y")+
  xlab("Year") +
  ylab("Daily rate of change") +
  labs(title = "EUR against the U.S. dollar, 2000-2023",
       caption = "")+
  theme(plot.title = element_text(size=22),
        plot.subtitle = element_text(size=16),
        legend.title = element_blank(),
        legend.text=element_text(size=14),
        legend.position="bottom",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 18),
        strip.background = element_blank(),
        axis.text.x=element_text(size = 14, angle=45, hjust=1),
        axis.text.y=element_text(size = 8.75),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())

pb<-ggplot(gbp, aes(x = date, y = g))+
  geom_line(lwd = 0.5)+
  scale_x_date(date_breaks = "24 month", date_labels = "%Y")+
  xlab("Year") +
  ylab("Daily rate of change") +
  labs(title = "GBP against the U.S. dollar, 2000-2023",
       caption = "")+
  theme(plot.title = element_text(size=22),
        plot.subtitle = element_text(size=16),
        legend.title = element_blank(),
        legend.text=element_text(size=14),
        legend.position="bottom",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 18),
        strip.background = element_blank(),
        axis.text.x=element_text(size = 14, angle=45, hjust=1),
        axis.text.y=element_text(size = 8.75),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())

pc<-ggplot(chf, aes(x = date, y = g))+
  geom_line(lwd = 0.5)+
  scale_x_date(date_breaks = "24 month", date_labels = "%Y")+
  xlab("Year") +
  ylab("Daily rate of change") +
  labs(title = "CHF against the U.S. dollar, 2000-2023",
       caption = "Source: International Monetary Fund. Series: Representative rates.")+
  theme(plot.title = element_text(size=22),
        plot.subtitle = element_text(size=16),
        legend.title = element_blank(),
        legend.text=element_text(size=14),
        legend.position="bottom",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 18),
        strip.background = element_blank(),
        axis.text.x=element_text(size = 14, angle=45, hjust=1),
        axis.text.y=element_text(size = 8.75),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())

cowplot::plot_grid(pa,pb,pc,nrow = 3, align = "v")

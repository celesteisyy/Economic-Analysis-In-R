#plotting fig1 (hockey stick)--------------
ggplot(forex, aes(x = date, y = rate))+
  geom_line(stat='identity', lwd = 1)+
  scale_x_date(date_breaks = "24 month", date_labels = "%Y")+
  xlab("") +
  ylab("USD/GBP") +
  labs(title = "GBP against the US dollar, 1995-2023",
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

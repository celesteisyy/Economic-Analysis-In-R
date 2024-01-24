#plotting-------
ggplot( df, aes(x = date, y = value, linetype = percentile))+
  geom_line(lwd = 1)+
  xlab("") +
  ylab("Pre-tax national income per share (%)") +
  labs(title = "Pre-tax National Income in Spain, 1980-2022",
       caption = "Source: World Inequality Database.")+
  theme(plot.title = element_text(size=15,vjust=2),
        legend.title = element_blank(),
        legend.text=element_text(size=10),
        legend.position="bottom",
        plot.caption = element_text(size=10, hjust = 0),
        axis.title = element_text(size = 13),
        strip.background = element_blank(),
        axis.text.x=element_text(size = 13, hjust = 0.7, angle = 45),
        axis.text.y=element_text(size = 10),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())


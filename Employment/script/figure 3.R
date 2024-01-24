#vacancy plot
ggplot(gender, aes(x = date, y = une, color = sex))+
  geom_line(stat="identity",lwd = 1)+
  theme(plot.title = element_text(size=15),
        legend.title = element_blank(),
        legend.position="bottom",
        plot.caption = element_text(size=10, hjust = 0),
        plot.subtitle = element_text(size=10, hjust = 0),
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
  xlab("") +
  ylab("Unemployment rates (%)") +
  labs(title = "Unemployment Rates by Gender in Spain, 2000 - 2022",
       subtitle='Age 15 and over, seasonal adjustment',
       caption = "Source: OECD, Series: Short-Term Labour Market Statistics: Unemployment Rates by age and gender")


#cpl----------------------------
ggplot(cpl, aes(x = as.numeric(date), y = price, color = country))+
  geom_line(aes(alpha = 'ES'))+
  scale_color_manual(values = rep(1, 38))+
  scale_alpha_manual(values = c(0.25, 1))+
  theme(plot.title = element_text(size=12),
        plot.subtitle = element_text(size=9),
        legend.title = element_blank(),
        legend.position="none",
        plot.caption = element_text(size=6, hjust = 0),
        axis.title = element_text(size = 11),
        strip.background = element_blank(),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        legend.key = element_rect(fill = NA),
        text=element_text(family="Palatino"),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background = element_rect(fill = "transparent", colour = NA))+
  xlab("Year") +
  ylab("Comparative Price Levels") +
  labs(title = "Comparative Price Levels, 2018-2022",
       subtitle = "the Ratio between Purchasing power parities (PPPs) and Market Exchange Rate for Each Country",
       caption = "Source: Eurostat. Note: Data is expressed in relation to EU27_2020 = 100.")

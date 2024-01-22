#plotting-----------
ggplot(evo, aes(x = year, y = gini))+
  geom_line(lwd = 0.6) +
  theme(plot.title = element_text(size=12),
        plot.subtitle = element_text(size=9),
        plot.caption = element_text(size=7),
        axis.title = element_text(size = 11),
        strip.background = element_blank(),
        axis.line.x = element_line(linewidth = 0.28, colour = "black"),
        axis.line.y = element_line(linewidth = 0.28, colour = "black"),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', linewidth = 0.1),
        panel.grid.major = element_line('grey', linewidth = 0.1),
        legend.position = "none",
        text=element_text(family="Palatino"),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background = element_rect(fill = "transparent", colour = NA))+
  xlab("Year") +
  ylab("Gini Index (1968=100)")+
  labs(title = "The Gini Index for Spain",
       subtitle ="",
       caption = "Source: World Bank, World Development Indicators")
  


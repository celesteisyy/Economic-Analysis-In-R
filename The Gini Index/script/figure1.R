library(ggthemes)
#plotting---------------
ggplot(gini, aes(x=country, y=gini)) +
  geom_linerange(aes(ymin=0, ymax=gini, alpha = 0.8)) +
  geom_hline(yintercept = 0)+
  geom_point(aes(color = ifelse(country == "Spain", "Spain", "Other")), size = 3) +
  scale_color_manual(values = c("black", "red"), guide = FALSE) +  # 设置颜色映射
  geom_linerange(data = subset(gini, country == "Spain"), aes(ymin = 0, ymax = gini), color = "red", alpha = 0.8, size = 0.6) +
  coord_flip() +
  theme_tufte() +
  theme(plot.title = element_text(size=22),
        plot.subtitle = element_text(size=16),
        legend.title = element_blank(),
        legend.text=element_text(size=14),
        legend.position="none",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 18),
        strip.background = element_blank(),
        axis.text.x=element_text(size = 14),
        axis.text.y=element_text(size = 8.75),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())+
  xlab("") +
  ylab("") +
  labs(title = "The Gini Index",
       subtitle = "Selected countries, 2020",
       caption = "Source: World Bank, World Development Indicators.")


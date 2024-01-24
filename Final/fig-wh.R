#Figure
library(corrgram)
library(ggthemes)


p1<-ggplot(whr, aes(y=value, x=country, fill = ifelse(country == "Spain", "steelblue", "gray"))) + 
  geom_bar(position="stack", stat="identity") +
  coord_flip() +
  scale_fill_manual(values = c("gray", "steelblue"))+
  theme_tufte() +
  theme(plot.title = element_text(size=15),
        plot.subtitle = element_text(size=12),
        legend.title = element_blank(),
        legend.position="none",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 15),
        strip.background = element_blank(),
        strip.placement = "outside",
        axis.text.y = element_text(size =12),
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        legend.key = element_rect(fill = NA),
        text=element_text(family="Palatino"),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background = element_rect(fill = "transparent", colour = NA))+
  xlab("") +
  ylab("") +
  labs(title = "Average Life Evaluation in Selected countries, 2023",
       subtitle = "A. Average Life Evaluation",
       caption = "Source: World Happiness Report, Data for Figure 2.1.")

p2<-ggplot(df, aes(y=value, x=country, fill = variable)) + 
  geom_bar(position="fill", stat="identity") +
  coord_flip() +
  theme_tufte() +
  theme(plot.title = element_text(size=15),
        plot.subtitle = element_text(size=12),
        legend.title = element_blank(),
        legend.position="none",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 15),
        strip.background = element_blank(),
        strip.placement = "outside",
        axis.text.y = element_text(size =12),
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        legend.key = element_rect(fill = NA),
        text=element_text(family="Palatino"),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background = element_rect(fill = "transparent", colour = NA))+
  xlab("") +
  ylab("") +
  labs(title = "",
       subtitle = "B. Average Life Evaluation Explained by 6 Factors",
       caption = "")

cowplot::plot_grid(p1, p2, ncol = 2, rel_widths = c(0.5, 0.5), align = "v")

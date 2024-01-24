#plotting-------------------------------------------
library(ggpubr)

p1<-ggplot(adj, aes(x = date, y = unemp))+
  geom_line(stat='identity', lwd = 1)+
  scale_x_date(date_breaks = "4 month", date_labels = "%m-%Y")+
  xlab("") +
  ylab("Unemp. rate (%)") +
  labs(title = "Unemplotment rate",
       caption = "")+
  theme(plot.title = element_text(size=12),
        plot.subtitle = element_text(size=8),
        legend.title = element_blank(),
        legend.text=element_text(size=10),
        legend.position="bottom",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 12),
        strip.background = element_blank(),
        axis.text.x=element_text(angle=45, hjust=1, size = 10),
        axis.text.y=element_text(size = 10),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())

p2<-ggplot(adj, aes(x = date, y = trend))+
  geom_line(stat='identity', lwd = 1)+
  scale_x_date(date_breaks = "4 month", date_labels = "%m-%Y")+
  xlab("") +
  ylab("Unemp. rate (%)") +
  labs(title = "Trend component",
       caption = "")+
  theme(plot.title = element_text(size=12),
        plot.subtitle = element_text(size=8),
        legend.title = element_blank(),
        legend.text=element_text(size=10),
        legend.position="bottom",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 12),
        strip.background = element_blank(),
        axis.text.x=element_text(angle=45, hjust=1, size = 10),
        axis.text.y=element_text(size = 10),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())

p3<-ggplot(adj, aes(x = date, y = diff))+
  geom_line(stat='identity', lwd = 1)+
  scale_x_date(date_breaks = "4 month", date_labels = "%m-%Y")+
  xlab("") +
  ylab("Unemp. rate (%)") +
  labs(title = "Shock Component",
       caption = "")+
  theme(plot.title = element_text(size=12),
        plot.subtitle = element_text(size=8),
        legend.title = element_blank(),
        legend.text=element_text(size=10),
        legend.position="bottom",
        plot.caption = element_text(size=12, hjust = 0),
        axis.title = element_text(size = 12),
        strip.background = element_blank(),
        axis.text.x=element_text(angle=45, hjust=1, size = 10),
        axis.text.y=element_text(size = 10),
        strip.placement = "outside",
        panel.grid.minor = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.grid.major = element_line('grey', size = 0.1, linetype = 'dashed'),
        panel.background = element_rect(fill = "transparent", colour = NA),
        plot.background  = element_rect(fill = "transparent", colour = NA),
        legend.background = element_rect(fill='transparent'),
        legend.key=element_blank())

ggarrange(p1, p2, p3 ,ncol = 1, nrow = 3)

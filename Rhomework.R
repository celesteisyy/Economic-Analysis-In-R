#数据读取-------------
library(readxl)
data<-read_excel("XXXX")#XXXX为文件位置

#数据处理（日期数据处理）---------------
library(xts)
time<-as.Date(data$Date,"%m/%d/%Y")#data$Date表示引用data这个数据中的Date列；
                                   #引号内为告知程序你的时间格式为月/日/年
time#打View(time)也可以，都是查看time
data$Date<-time#或者直接data$Date<-as.Date(data$Date,"%m/%d/%Y")

  #若处理为月度数据
time_monthly<-as.yearmon(time)
time_monthly
  #若处理为季度数据-
time_quarterly<-as.yearqtr(time)
time_quarterly

#单变量时间序列绘制------------
Open<-ggplot(data,aes(Date,Open))+geom_line(color="red",linewidth = 1)
High<-ggplot(data,aes(time,High))+geom_line(color='plum',linewidth = 1)
Low<-ggplot(data,aes(time,Low))+geom_line(color='green4',linewidth = 1)
Close<-ggplot(data,aes(time,Close))+geom_line(color='blue',linewidth = 1)

#多变量时间序列绘制-------------
df <- data %>%
  select(Date, Open, High, Low, Close) %>%
  pivot_longer(cols = -Date, names_to = "variable", values_to = "value")
ggplot(df, aes(x = Date, y = value)) +
  geom_line(aes(color = variable), linewidth = 1) 

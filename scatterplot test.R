dataset<-read.csv(file="https://raw.githubusercontent.com/irwannafly/R-Programming/master/Big%20Mart%20Dataset.csv", header=TRUE)
library(ggplot2)
ggplot(dataset, aes(Item_Visibility, Item_MRP)) + geom_point() + scale_x_continuous("Item_Visibility", breaks = seq(0,0.35,0.005)) + scale_y_continuous("Item MRP", breaks = seq(0,270, by = 30)) + theme_bw()
ggplot(dataset, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+
  theme_bw() + labs(title="Scatterplot")

ggplot(dataset, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ 
  theme_bw() + labs(title="Scatterplot") + facet_wrap( ~ Item_Type)
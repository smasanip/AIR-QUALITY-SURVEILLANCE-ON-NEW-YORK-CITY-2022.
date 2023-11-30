library(tidyverse)
library(ggplot2)
d <- read.csv("/Users/sathwik/Documents/AIT-580/Air_Quality-1.csv")
view(d)
sum(is.na(d))
str(d)

#Bar graph for Names
ggplot(d,aes(Name))+
  coord_flip()+
  labs(title = "Total no.of names of indicator")+
  geom_bar(fill="skyblue",color="black")


#plotting the graph for Name and data value
ggplot(d,aes(Name,Data.Value))+
  coord_flip()+
  labs(title = "Relation b/w names and data.value")+
  geom_histogram(stat= "identity",fill="orange")

 

#Selecting the subset of data from Name column 
data1<-d %>% filter(Name == "Traffic Density-Cars")
data1

# PLotting the graph between Geo.type.name and Data.Value
ggplot(data1,aes(Geo.Type.Name,Data.Value,fill=Geo.Type.Name))+
  coord_flip()+
  geom_bar(stat="identity")




# Plotting the graph between time period and Data.Value
ggplot(d,aes(reorder(Time.Period,Data.Value),Data.Value))+
  coord_flip()+
  labs(x="Time.Period",title="Relation b/w time.period and data.value")+
  theme(legend.position = NULL)+
  geom_bar(stat ="identity",fill='lightgreen')


# correlation between indicator.id and data.value
cor(d$Indicator.ID,d$Data.Value)


# linear model for the dataset
lm1 <- lm(Data.Value~., data= d)
summary(lm1)
par(mfrow=c(2,2))
plot(lm1)








  

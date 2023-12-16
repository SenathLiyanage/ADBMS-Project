Items$'Item Name' <- as.numeric(Items$`Item Name`)

ggplot(Items, aes(x = 'Item Name')) +
  geom_bar(stat = "count") 

library(tidyverse)

install.packages("dplyr")
library("dplyr")

Gr_City <- Customer %>% 
  group_by(City) %>% 
  summarise(Total_Sales = n())

View(Gr_City)

ggplot(Gr_City, aes(x = City, y = Total_Sales)) +
  geom_bar()

ggplot()


city_colors <- c("#1F78B4", "#33A02C", "#6A3D9A", "#E31A1C", "#FF7F00", 
                 "#ebc634", "#34eb65", "#685e6e", "#35e8c7", "#e2e835", 
                 "#b36ef0", "#000000")
 ggplot(Gr_City, aes(x = City, y = Total_Sales, fill = City)) +
       geom_bar(stat = "identity", color = "black") +
       scale_fill_manual(values = city_colors) +
       theme_minimal()

Gr_Income <- Bills %>% 
  group_by(Month) %>% 
  summarise(Income = sum(Interest))
view(Gr_Income)

Gr_Income$Month <- as.factor(Gr_Income$Month)
str(Gr_Income)

month_colors <- c("#1F78B4", "#33A02C", "#6A3D9A", "#E31A1C", "#FF7F00", 
                 "#ebc634", "#34eb65", "#685e6e", "#35e8c7", "#e2e835", 
                 "#b36ef0", "#000000")
ggplot(Gr_Income, aes(x = Month, y = Income, fill = Month)) +
  geom_bar(stat = "identity", position = "identity", color = "black") +
  scale_fill_manual(values = month_colors) +
  theme_minimal()



Gr_Cost <- Bills %>% 
  group_by(Month) %>% 
  summarise(Cost = sum(Total))
view(Gr_Income)

Gr_Cost$Month <- as.factor(Gr_Cost$Month)
str(Gr_Cost)

month_colors <- c("#1F78B4", "#33A02C", "#6A3D9A", "#E31A1C", "#FF7F00", 
                  "#ebc634", "#34eb65", "#685e6e", "#35e8c7", "#e2e835", 
                  "#b36ef0", "#000000")
ggplot(Gr_Cost, aes(x = Month, y = Cost, fill = Month)) +
  geom_bar(stat = "identity", position = "identity", color = "black") +
  scale_fill_manual(values = month_colors) +
  theme_minimal()

Gr_Item <- Items %>% 
  group_by(Item_Name) %>% 
  summarise(Quantity = n())

View(Gr_Item)

Gr_Item$Item_Name <- as.factor(Gr_Item$Item_Name)
str(Gr_Cost)

Item_colors <- c("#1F78B4", "#33A02C", "#6A3D9A", "#E31A1C", "#FF7F00", "#34eb65")

ggplot(Gr_Item, aes(x = Item_Name, y = Quantity, fill = Item_Name)) +
  geom_bar(stat = "identity", position = "identity", color = "black") +
  scale_fill_manual(values = Item_colors) +
  theme_minimal()










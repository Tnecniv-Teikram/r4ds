# This script follows the book R4ds by Hadley wickham. Source: https://r4ds.had.co.nz/

#install.packages("tidyverse")
library(tidyverse)

# 3.2 First steps
# 3.2.1 The mpg data frame

# plot mpg dataframe fuel efficiency on highway vs car engine size 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

# create ggplot2 template

#ggplot(data = <DATA>) +
#  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

# 3.2.4


# Run ggplot(data = mpg). What do you see?
# an empty plot  

# How many rows are in mpg? How many columns?
# 234 rows and 11 columns  

# What does the drv variable describe? Read the help for ?mpg to find out.
# drv stands for type of drive: f = front wheel, 3 = rear wheel drive, 4 = 4wd

# Make a scatterplot of hwy vs cyl.
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = hwy, y = cyl))

# What happens if you make a scatterplot of class vs drv? Why is the plot not useful?
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv))

# 3.3 aesthetic mapping

# assign a unique color to each car class
ggplot( data = mpg) + 
  geom_point(mapping = aes( x = displ, y = hwy, color = class ))

# assign different point size for each car class
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

# same plot with transparent point based on class
ggplot(data = mpg) +
  geom_point(mapping = aes( x = displ, y = hwy, alpha = class))

# same plot with different shape for each car class
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# scatterplot between fuel efficiency and highway mileages 
ggplot(data = mpg) + 
  geom_point(mapping = aes( x = displ, y = hwy), color = 'blue')

# 3.3.1 exercises

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y =  hwy, color = displ < 5, shape = drv))

# split points by fuel efficiency treshold 
ggplot(data = mpg) + 
geom_point(mapping = aes(x = displ, y =  hwy, color = displ < 5, shape = drv))



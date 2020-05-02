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

# 3.5 Facets

# create multiple plots for different classes of a single variable with facet  
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2) # facet wrap needs a discrete variable

# facet a plot on combination of 2 variables. 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl) # facet grid should contain two variables

# facet grid: scatter plot between engine displacement (displ), miles per gallon (hwy), sorted by number of cylinders 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid( . ~ cyl) # use . if you don't want to facet rows or columns

# 3.5.1 Exercises

# 1) facet wrap using a continious variable splits plots by value
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ cty)

# 2)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl))

# 3) . does 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)

# 4) 
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(. ~ class, nrow = 2)

# 3.6 Geometric objects

# compare geoms. First plot a scatterplot
ggplot( data = mpg) + 
  geom_point(aes(x = displ, y = hwy))

# then a smoothed geom scatterplot
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x  =  displ, y = hwy))

# separate cars into three lines based on drv value. 
ggplot( data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv  )) # set linetype for different wheel drive (f = front wheel, 4 = four wheel, r = rear wheel)

# now overlay smoothed lines and points and separate by drive class (4wheel,rear,front)
ggplot(data = mpg) +
  geom_smooth(mapping = aes( x = displ, y = hwy, color = drv ,linetype = drv)) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = drv))


ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes( x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv),
                            show.legend = FALSE)

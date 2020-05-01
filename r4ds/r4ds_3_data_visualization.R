# This script follows the book R4ds by Hadley wickham. Source: https://r4ds.had.co.nz/

#install.packages("tidyverse")
library(tidyverse)

# 3.2 First steps
# 3.2.1 The mpg data frame

# plot mpg dataframe fuel efficiency on highway vs car engine size 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

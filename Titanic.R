#### Mike's comment: is there a difference between 'titanic' and 'Titanic'? 'titanic' didn't work here as it did in the browser-based exercise. Then I had to rename 'Pclass' for 'Class' in the y axis.
library(tidyverse)
library(Titanic)
Titanic <- as.data.frame(Titanic)
# titanic is avaliable in your workspace
# 1 - Check the structure of titanic
str(Titanic)

# 2 - Use ggplot() for the first instruction
ggplot(Titanic, aes(x = Class, fill = Sex)) +
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer
ggplot(Titanic, aes(x = Class, fill = Sex)) +
  geom_bar(position = "dodge") + facet_grid(. ~ Survived)


# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4
ggplot(Titanic, aes(x = Class, y = Age, color = Sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) + facet_grid(. ~ Survived)


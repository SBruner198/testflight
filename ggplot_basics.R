library(datasets)
data(mtcars)

head(mtcars, 5)

library(ggplot2)

ggplot(aes(x=disp, y=mpg), data=mtcars)+geom_point()

# add a title
ggplot(data = mtcars, aes(x=disp, y=mpg)) +
  geom_point() +
  ggtitle("displacement vs miles per gallon")

# change axis name
ggplot(data = mtcars, aes(x=disp, y=mpg)) +
  geom_point() +
  ggtitle("displacement vs miles per gallon") +
  labs(x = "Displacement", y = "Miles per Gallon")

# make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
# creat boxplot of the distribution for v-shaped and straight Engine
ggplot(data = mtcars, aes(x=vs, y=mpg)) +
  geom_boxplot()

ggplot(data = mtcars, aes(x=vs, y=mpg, fill = vs)) +
  geom_boxplot(alpha=0.3) +
  theme(legend.position = "none")

# histogram of weight wt
ggplot(data = mtcars, aes(x=wt)) +
  geom_histogram(binwidth = 0.5)







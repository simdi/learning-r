# View(iris)
# table(iris$Species)
# We can see that the species are equally distributed
# setosa versicolor virginica
# 50     50         50

# Scatter plot of Sepal.Length vs Sepal.Length
# Using the tilde ~ to separate the x and y variables
# On the left side of the tilde is the y variable
# On the right side of the tilde is the x variable
# plot(iris$Sepal.Length~iris$Petal.Length)

# Making it more descriptive
# Bi-variate analysis with the help of a scattered plot
# plot(iris$Sepal.Length~iris$Petal.Length, main="Sepal Length vs Petal Length", xlab="Petal Length", ylab="Sepal Length", col="blue", pch=16)

# Histogram
# Uni-variate analysis of Sepal.Width
# hist(iris$Sepal.Width, main="Histogram of Sepal Width", xlab="Sepal Width", col="red", border="blue")

# Boxplot
# We use a boxplot to compare the distribution of a variable across different levels of a categorical variable
# boxplot(Sepal.Length ~ Species, data = iris, main = "Boxplot of Sepal Width by Species", xlab = "Species", ylab = "Sepal Width") # nolint


# # Load the ggplot2 package
library(ggplot2)
# ggplot(data = iris)
# ggplot(data = iris, aes(y = Sepal.Length, x = Petal.Length))
# ggplot(data = iris, aes(y = Sepal.Length, x = Petal.Length)) +
#   geom_point()
# ggplot(data = iris, aes(y = Sepal.Length, x = Petal.Length, col = Species)) +
#   geom_point() +
#   ggtitle("Sepal Length vs Petal Length") +
#   xlab("Petal Length") +
#   ylab("Sepal Length")
# ggplot(data = iris, aes(y = Sepal.Length, x = Petal.Length, shape = Species, col = Species)) +
#   geom_point() +
#   ggtitle("Sepal Length vs Petal Length") +
#   xlab("Petal Length") +
#   ylab("Sepal Length")


# House dataset
# Load the house dataset
read.csv("~/Desktop/projects/r-projects/learning-r/housesrate.csv") -> house
# View(house)
library(dplyr)
house %>% select(c(-1)) -> house
# View(house)
# Histogram
# ggplot(data = house, aes(x = price)) +
#   geom_histogram()
# ggplot(data = house, aes(x = price)) +
#   geom_histogram(bins = 50, fill = "palegreen", col="green")
# ggplot(data = house, aes(x = price, fill = air_cond)) +
#   geom_histogram()
# ggplot(data = house, aes(x = price, y = area)) +
#   geom_point() +
#   ggtitle("Price vs Area") +
#   xlab("Price") +
#   ylab("Area")

# Barplot
# ggplot(data = house, aes(x = waterfront, fill = air_cond)) +
#   geom_bar(position = "fill")
ggplot(data = house, aes(x = waterfront, fill = `sewer`)) +
  geom_bar(position = "fill")

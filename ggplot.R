View(iris)
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
plot(iris$Sepal.Length~iris$Petal.Length, main="Sepal Length vs Petal Length", xlab="Petal Length", ylab="Sepal Length", col="blue", pch=16)

# Histogram
# Uni-variate analysis of Sepal.Width
hist(iris$Sepal.Width, main="Histogram of Sepal Width", xlab="Sepal Width", col="red", border="blue")

# Boxplot
# We use a boxplot to compare the distribution of a variable across different levels of a categorical variable
boxplot(Sepal.Length~Species, data=iris, main="Boxplot of Sepal Width by Species", xlab="Species", ylab="Sepal Width")


# # Load the ggplot2 package
# library(ggplot2)
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
# ggplot(data = house, aes(y = price, x = living_area, col = factor(rooms))) +
#   geom_point()


# House dataset
# Load the house dataset
# read.csv("~/Desktop/projects/r-projects/learning-r/housesrate.csv") -> house
# View(house)
library(dplyr)
# house %>% select(c(-1)) -> house
# Change the air_cond value from 0 to No and 1 to Yes
# house %>% mutate(air_cond = ifelse(air_cond == 1, "Yes", "No")) -> house
# View(house)
# Histogram
# Uni-variate analysis of price
# ggplot(data = house, aes(x = price)) +
#   geom_histogram()
# ggplot(data = house, aes(x = price)) +
#   geom_histogram(bins = 50, fill = "palegreen", col="green")
# ggplot(data = house, aes(x = price, fill = air_cond)) +
#   geom_histogram()
# ggplot(data = house, aes(x = price, y = age)) +
#   geom_point() +
#   ggtitle("Price vs Area") +
#   xlab("Price") +
#   ylab("Area") -> obj

# Barplot
# ggplot(data = house, aes(x = waterfront, fill = air_cond)) +
#   geom_bar(position = "fill")
# ggplot(data = house, aes(x = air_cond)) +
#   geom_bar(fill = "orange")

# Frequency polygon
# ggplot(data = house, aes(x = price)) +
#   geom_freqpoly()
# ggplot(data = house, aes(x = price)) +
#   geom_freqpoly(bins = 60)
# ggplot(data = house, aes(x = price, col = air_cond)) +
#   geom_freqpoly(bins = 60)

# Boxplot
# ggplot(data = house, aes(x = factor(rooms), y = price)) +
#   geom_boxplot()
# ggplot(data = house, aes(x = factor(rooms), y = price, fill = factor(rooms))) +
#   geom_boxplot()
# ggplot(data = house, aes(x = factor(rooms), y = price, fill = air_cond)) +
#   geom_boxplot()

# Smoothed line
# ggplot(data = house, aes(x = living_area, y = price)) +
#   geom_smooth()
# ggplot(data = house, aes(x = living_area, y = price, col = heat)) +
#   geom_smooth(se = F)
# ggplot(data = house, aes(x = living_area, y = price)) +
#   geom_point() +
#   geom_smooth(method = "lm", se = F)
# ggplot(data = house, aes(x = living_area, y = price, col = air_cond)) +
#   geom_point() +
#   geom_smooth(method = "lm", se = F)
# ggplot(data = house, aes(x = living_area, y = price, col = air_cond)) +
#   geom_point() +
#   geom_smooth(method = "lm", se = F) +
#   facet_grid(heat ~ air_cond)


# Theme customization
# ggplot(data = house, aes(x = factor(rooms), y = price, fill = factor(rooms))) +
#   geom_boxplot() -> obj1
# obj1 + labs(title = "Price w.r.t Rooms", x = "Rooms", y = "Rooms") -> obj2
# obj2 + theme(panel.background = element_rect(fill = "palegreen")) -> obj3
# obj3 + theme(plot.title = element_text(hjust = 0.5, face = "bold", color = "cadetblue")) -> obj4
# obj4 + scale_y_continuous(labels = scales::dollar)


bank_additional_full <- read.delim("~/Desktop/projects/r-projects/learning-r/bank-additional-full.csv", sep = ";")
# Remove the first column
bank_additional_full %>% select(c(-1)) -> bank_additional_full
# View(bank_additional_full)
# ggplot(bank_additional_full, aes(x = balance, y = mpg)) +
#   geom_point()
# Scattered plot
# plot(bank_additional_full$duration ~ bank_additional_full$age)

# Histogram
# hist(bank_additional_full$duration, main = "Histogram of Duration", xlab = "Duration", col = "red", border = "blue")

# Barplot
# barplot(table(bank_additional_full$job), main = "Barplot of Job", xlab = "Job", col = "red", border = "blue")

# All these different plots are made with the help of base graphics, and they are not very attractive(not of good pring quality). So, we will use ggplot2 to make them more attractive.

ggplot(data = bank_additional_full, aes(x = job, fill = y)) +
  geom_histogram(stat = "count", bins = 50) -> obj1
obj1 + labs(title = "Histogram of Job", x = "Job", y = "Frequency") -> obj2
obj2 + theme(panel.background = element_rect(fill = "palegreen")) -> obj3
obj3 + theme(plot.title = element_text(hjust = 0.5, face = "bold", color = "cadetblue")) -> obj4
obj4 + scale_y_continuous(labels = scales::comma) -> obj5
obj5 + theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5)) -> obj6
obj6 + theme(axis.title.x = element_text(face = "bold", color = "darkblue")) -> obj7

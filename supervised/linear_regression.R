mtcars <- read.csv("https://gist.githubusercontent.com/seankross/a412dfbd88b3db70b74b/raw/5f23f993cd87c283ce766e7ac6b329ee7cc2e1d1/mtcars.csv")
# View(mtcars)
# The caTools package is used to split the data into training and test sets
library(caTools)

# split data into training and test sets
my_split <- sample.split(mtcars$mpg, SplitRatio = 0.65)
train <- subset(mtcars, my_split == TRUE)
test <- subset(mtcars, my_split == FALSE)
nrow(train)
nrow(test)
# View(train)

# Linear regression
# How does mpg vary with respect to other variables?
# lm(formula = y ~ x, data = data)
# On the left side of the formula is the response(dependent) variables
# On the right side of the formula is the predictor(independent) variables
model1 <- lm(formula = mpg ~ ., data = mtcars)
View(model1)
result <- predict(model1, newdata = test)
# View(result)

# Display the predicted values against the actual values
final <- cbind(actual = test$mpg, predicted = result)
final <- as.data.frame(final)
final <- cbind(final, error = final$actual - final$predicted)
# View(final)

# Calculate the root mean error
rmse1 <- sqrt(mean(final$error^2)) # 2.02925e-14
# Calculate the mean absolute error
mae1 <- mean(abs(final$error))
# Calculate the mean absolute percentage error
mape1 <- mean(abs(final$error / final$actual))


# Linear regression with all other fields except gear and carb
model2 <- lm(formula = mpg ~ . - gear - carb, data = mtcars)
result <- predict(model2, newdata = test)
final <- cbind(actual = test$mpg, predicted = result)
final <- as.data.frame(final)
final <- cbind(final, error = final$actual - final$predicted)
View(final)

# Calculate the root mean error
rmse2 <- sqrt(mean(final$error^2)) # 2.02925e-14
# Calculate the mean absolute error
mae2 <- mean(abs(final$error))
# Calculate the mean absolute percentage error
mape2 <- mean(abs(final$error / final$actual))


# From our analysis, we can see that the error is the same for both models
# We can not say that the model with all the fields is better than the model with all fields except gear and carb fields.
# Hence, both of the models are similar in terms of accuracy.

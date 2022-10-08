census <- read.csv("https://raw.githubusercontent.com/harikakanthi/adult-census-data/master/adult.csv")
# View(census)

# R provides us with rpart(recursive partitioning) package to build decision trees
# The rpart() function is used to build a decision tree
library(rpart)
# The caTools package is used to split the data into training and test sets
library(caTools)

# split data into training and test sets
my_split <- sample.split(census$income, SplitRatio = 0.65)
train <- subset(census, my_split == TRUE)
test <- subset(census, my_split == FALSE)
nrow(train)
nrow(test)

# Build a decision tree
model_classify <- rpart(formula = income ~ ., data = train, method = "class")
# Predict the values
result <- predict(model_classify, newdata = test, type = "class")
View(result)

# Determine the accuracy of the model
# The caret package is used to determine the accuracy of the model
library(caret)
library(e1071)
confusionMatrix(result, as.factor(test$income))
# Confusion Matrix and Statistics

#           Reference
# Prediction <=50K >50K
#      <=50K  8202 1306
#      >50K    450 1438

#                Accuracy : 0.8459
#                  95% CI : (0.8392, 0.8525)
#     No Information Rate : 0.7592
#     P-Value [Acc > NIR] : < 2.2e-16

#                   Kappa : 0.5283

#  Mcnemar's Test P-Value : < 2.2e-16

#             Sensitivity : 0.9480
#             Specificity : 0.5241
#          Pos Pred Value : 0.8626
#          Neg Pred Value : 0.7617
#              Prevalence : 0.7592
#          Detection Rate : 0.7197
#    Detection Prevalence : 0.8343
#       Balanced Accuracy : 0.7360

#        'Positive' Class : <=50K

# The accuracy of the model is 84.59%

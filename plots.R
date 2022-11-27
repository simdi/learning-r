# Scattered plot
# x <- mtcars$wt
# y <- mtcars$mpg

# # Plot with main and axis titles
# # Change point shape (pch = 19) and include frame.
# plot(x, y, main = "MPG vs Weight", xlab = "Weight", ylab = "MPG", pch = 19, frame = TRUE)
# model <- lm(y ~ x, data = mtcars)
# abline(model, col = "blue", lwd = 2)


# Barplot
# # Create a barplot of the number of cars in each gear category
# barplot(table(mtcars$gear), main = "Number of Cars in Each Gear Category", xlab = "Gear Category", ylab = "Number of Cars")
# Create a barplot of the number of cars in each gear category
# barplot(table(mtcars$gear), main = "Number of Cars in Each Gear Category", xlab = "Gear Category", ylab = "Number of Cars", col = "red")
# # Create a barplot of the number of cars in each gear category
# barplot(table(mtcars$gear), main = "Number of Cars in Each Gear Category", xlab = "Gear Category", ylab = "Number of Cars", col = "red", border = "blue")


bank <- read_delim("~/desktop/projects/r-projects/learning-r/bank-additional-full.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(bank)
# Stacked barplot
# Create a stacked barplot of the number of "Yes" and "No" responses for each job category
barplot(table(bank$y, bank$job), main = "Number of Yes and No Responses for Each Job Category", xlab = "Job Category", ylab = "Number of Responses", col = c("red", "blue"), border = "black")

# Create a stacked barplot of the number of "Yes" and "No" responses for each job category normalized number to percentage
a <- apply(d, 2, function(x) {
  x * 100 / sum(x, na.rm = T)
})
barplot(a, main = "Number of Yes and No Responses for Each Job Category", xlab = "Job Category", ylab = "Number of Responses", col = rainbow(2), border = "black", legend = rownames(table(bank$y)), las = 2)


barplot(table(bank$job), main = "Frequency of Job Categories", xlab = "Job Category", ylab = "Frequency", col = rainbow(12), border = 0, ylim = c(0, 12000), legend = rownames(table(bank$y)))

# Barplot of Yes and No Responses
barplot(table(bank$y), main = "Frequency of Yes and No Responses", xlab = "Response", ylab = "Frequency", col = rainbow(2), border = 0, ylim = c(0, 43000), legend = rownames(table(bank$y)))


# Create a stacked barplot of the number of "Yes" and "No" responses for each job category
a <- aggregate(y, job, bank, FUN = length)
barplot(a$x ~ a$Group.1, main = "Number of Yes and No Responses for Each Job Category", xlab = "Job Category", ylab = "Number of Responses", col = c("red", "blue"), border = "black")

# barplot(rbind(a$b, b$b), main = "Number of Yes and No Responses for Each Job Category", xlab = "Job Category", ylab = "Number of Responses", col = c("red", "blue"), border = "black", beside = TRUE, legend = rownames(table(bank$y)))


# boxplot
# Create a boxplot of the balance for each job category
boxplot(bank$job, main = "Frequency of Job Categories", xlab = "Job Category", ylab = "Frequency", col = rainbow(12), border = 0)

# # Histogram
# Create a stacked histogram of the duration of calls for each job category
# hist(bank$duration, main = "Histogram of Duration", xlab = "Duration", col = "red", border = "blue")

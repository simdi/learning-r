x <- mtcars$wt
y <- mtcars$mpg

# Plot with main and axis titles
# Change point shape (pch = 19) and include frame.
plot(x, y, main = "MPG vs Weight", xlab = "Weight", ylab = "MPG", pch = 19, frame = TRUE)
model <- lm(y ~ x, data = mtcars)
abline(model, col = "blue", lwd = 2)

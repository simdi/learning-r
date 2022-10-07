# Data Manipulation
# library(dplyr)

# Load the house dataset
read.csv("~/Desktop/projects/r-projects/learning-r/housesrate.csv") -> house
iris <- read.csv("~/Desktop/projects/r-projects/learning-r/iris.csv")
# View(house)

# Select only the first two columns
# using the pipe operator
# We use the pipe operator to chain together multiple commands
house %>% select(c(1, 2)) -> house1

# Select all the columns except the first two
# Without using the pipe operator
# NOTE: The select() function is used to select the columns of a data frame.
# indexing starts from 1 in R and not 0 like in Python
select(house, -c(1, 2)) -> house2
#  Select all the columns that starts with the letter "a"
select(house, starts_with("a")) -> house3
# Select all the columns that ends with "rooms"
select(house, ends_with("rooms")) -> house4
# Select all the columns that contains the letter "a"
select(house, contains("a")) -> house5
# Selecting a range of columns
select(house, 1:3) -> house6
# Select all the columns that starts with the letter "a" and ends with "rooms"
house7 <- select(house, starts_with("a"), ends_with("rooms"))
# View(house7)

# Mutate
# Add a new column to the data frame
# NOTE: The mutate() function is used to add a new column to a data frame.
house8 <- mutate(house, house_value = price - land_value)
# View(house8)

# Filter
# Filter the data frame
# NOTE: The filter() function is used to filter the data frame.
house9 <- filter(house, price > 600000)
price_range <- range(house$price) # 5000 77500
house10 <- filter(house, price > price_range[1] & price < price_range[2])
# View(house10)

# Arrange
# Arrange the data frame
# NOTE: The arrange() function is used to arrange the data frame.
house11 <- arrange(house, desc(price))
# View(house11)

# Summarise
# Summarise the data frame
# NOTE: The summarise() function is used to summarise the data frame.
house12 <- summarise(house, mean_price = mean(price))
View(house12)

# Group_by
# Group the data frame
# NOTE: The group_by() function is used to group the data frame.
house13 <- group_by(house, rooms)
house14 <- summarise(house13, mean_price = mean(price))
# View(house14)

# Join
# Join the data frame
# NOTE: The join() function is used to join the data frame.
house15 <- join(house, house14, by = "rooms")
# View(house15)

# Sample
# Sample the data frame
# NOTE: The sample() function is used to sample the data frame.
house16 <- sample(house, 10)
# View(house16)

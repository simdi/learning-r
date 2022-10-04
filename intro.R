# Vectors
vtr1 = c(TRUE, FALSE)
# Numeric
vtr2 = c(15, 85.48754787, 99999)
# Integer
vtr3 = c(35L, 58L, 149L)
# Warning message:
# integer literal 54.856L contains decimal; using numeric value 
vtr4 = c(54.856L)

# This will convert every value into a numeric value
vtr5 = c(TRUE, 34L, 3.14)

# Every value added with a character will be converted into a character
vtr6 = c("Hello", FALSE, 65L) # [1] "Hello" "FALSE" "65"


# Matrix
# Matrix are the R objects in which the elements are arranged in a two-dimensional rectangular layout.
mtr = matrix(c(5:29), 5, 5, byrow = TRUE)
# mtr
#       [,1] [,2] [,3] [,4] [,5]
# [1,]    5   10   15   20   25
# [2,]    6   11   16   21   26
# [3,]    7   12   17   22   27
# [4,]    8   13   18   23   28
# [5,]    9   14   19   24   29

# Arrays are the R objects in which the elements are arranged in a multi-dimensional rectangular layout.
# The array() function is used to create an array.
# The first argument of the array() function is the vector of elements.
# The second argument of the array() function is the dimension of the array.
# The third argument of the array() function is the dimension names.

arr = array(c(1:24), dim = c(2, 3, 4))
# arr
# , , 1
#      [,1] [,2] [,3]
# [1,]    1    7   13
# [2,]    2    8   14
#
# , , 2
#      [,1] [,2] [,3]
# [1,]    3    9   15
# [2,]    4   10   16
#
# , , 3
#      [,1] [,2] [,3]
# [1,]    5   11   17
# [2,]    6   12   18
#
# , , 4
#      [,1] [,2] [,3]
# [1,]    7   13   19
# [2,]    8   14   20
#


# Lists
# Lists are the R objects in which the elements can be of different data types.
# different data types like numeric, character, logical, matrix, array, etc.
# The list() function is used to create a list.
# The first argument of the list() function is the vector of elements. 
# The second argument of the list() function is the names of the elements.
vtr7 = c(5.678, 32, 95, 31.6)
vtr8 = c("Hello", "World", "R", "Programming")
lst = list(vtr7, vtr8, c(TRUE, FALSE, TRUE, FALSE))
# lst
# [[1]]
# [1]  5.678 32.000 95.000 31.600
#
# [[2]]
# [1] "Hello"     "World"     "R"         "Programming"
#
# [[3]]
# [1]  TRUE FALSE  TRUE FALSE


# Data Frames
# Data frames are the R objects in which the elements can be of different data types in an ordered manner.
# The data.frame() function is used to create a data frame.
# The first argument of the data.frame() function is the vector of elements.
# The second argument of the data.frame() function is the names of the elements.
# The third argument of the data.frame() function is the row names of the elements.
vtr9 = c(5.678, 32, 95, 31.6)
vtr10 = c("Hello", "World", "R", "Programming")
df = data.frame(vtr9, vtr10, c(TRUE, FALSE, TRUE, FALSE))
# df
#       vtr9 vtr10     c(TRUE, FALSE, TRUE, FALSE)
# 1  5.67800 Hello  TRUE
# 2 32.00000 World FALSE
# 3 95.00000     R  TRUE
# 4 31.60000 Programming FALSE


# Arithmetic Operations
# Addition
# 5 + 6
# Subtraction
# 5 - 6
# Multiplication
# 5 * 6
# Division
# 5 / 6
# Modulus
# 5 %% 6
# Exponentiation
# 5 ^ 6
# Integer Division
# 5 %/% 6


# Loops
# For Loop
# for (i in 1:10) {
#   print(i)
# }

# While Loop
# i = 1
# while (i <= 10) {
#   print(i)
#   i = i + 1
# }

# Repeat Loop
# i = 1
# repeat {
#   print(i)
#   i = i + 1
#   if (i > 10) {
#     break
#   }
# }

# Conditional Statements
# if (5 > 6) {
#   print("5 is greater than 6")
# } else if (5 == 6) {
#   print("5 is equal to 6")
# } else {
#   print("5 is less than 6")
# }

# Functions
# sum = function(x, y) {
#   return(x + y)
# }
# sum(5, 6)

# sum = function(x, y) {
#   x + y
# }
# sum(5, 6)

# sum = function(x, y) x + y
# sum(5, 6)


#  Strings
str1 = "Hello World"
str2 = "R Programming"
str3 = paste(str1, str2)
# str3
# [1] "Hello World R Programming"

# str4 = paste(str1, str2, sep = " ")
# str4
# [1] "Hello World R Programming"

# str5 = paste(str1, str2, sep = ", ")
# str5
# [1] "Hello World, R Programming"

# Substring
# substr(str1, 1, 5)
# [1] "Hello"

# substr(str1, 7, 12)
# [1] "World"

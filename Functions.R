# Making the script

x <- c(0.458, 1.6653, 0.83112)
percent <- round(x * 100, digits = 1)
result <- paste(percent, "%", sep ="")
print(result)


# Making the script into a function
addPercent <- function(x) {
  percent <- round(x * 100, digits = 1)
  result <- paste(percent, "%", sep= "")
  return (result)
}

# Formatting the numbers using the function
new.numbers <- c(0.8223, 0.02487, 1.62, 0.4)
addPercent(new.numbers)


# Playing with function objects
ppaste <- addPercent
ppaste

# Reducing the number of lines
addPercent <- function(x) {
  # Check to see if x in a number 
  if( !is.numeric(x) ) return(NULL)
  percent <- round(x * 100, digits= 1)
  paste(percent, "%", sep= "")
}

# Breaking the walls 
# Dropping the { } curly braces
odds <- function(x) x / (1-x)

odds(0.8)


# using arguments the smart way
percentages <- c(58.23, 120.4, 33)

addPercent <- function(x, mult) {
  percent <- round(x * mult, digits= 1)
  paste(percent, "%", sep= "")
}

addPercent(percentages, mult = 1)

# Adding default values
addPercent <- function(x, mult= 100) {
  percent <- round(x * mult, digits= 1)
  paste(percent, "%", sep= "")
}

addPercent(new.numbers)
addPercent(percentages, 1)

# Conjuring tricks with dots
# The dots take the argument of where it is coming from 
#round() has the argument digits
# digits is now the new argument in the function addPercent
addPercent <- function(x, mult= 100, ...) {
  percent <- round(x * mult, ...)
  paste(percent, "%", sep= "")
}
# DIGITS has been added without being specified in the original function
addPercent(new.numbers, digits= 2)


# digits is not needed if it has a default value 
addPercent(new.numbers)



# To specify a dafault value for digits
addPercent <- function(x, mult= 100, digits= 1) {
  percent <- round(x * mult, digits = digits)
  paste(percent, "%", sep= "")
}

# Using Functions as arguments
addPercent. <- function(x, mult =100, FUN = round, ...) {
  percent <- FUN(x * mult, ...)
  paste(percent, "%", sep= "")
}

# using signif() to round 3 digits
addPercent(new.numbers, FUN = signif, digits = 3)

# Using anonymous functions

profits <- c(2100, 1430, 3580, 5230)

addPercent(profits, FUN= function(x) round(x / sum(x) * 100)) # Not optimal

addPercent(profits / sum(profits))0

# CROSSING THE BORDERS

# Creating a test case
x <- 1:5
test <- function(x) {
  cat("This is x:",x, "\n")
  rm(x)
  cat("This is x after removing it:", x, "\n")
}

test(5:1)


# Adding "%" to characters
addPercent.character <- function(x) {
  paste(x, "%", sep= "")
}

# Create generic function
addPercent <- function(x, ...) {
  UseMethod("addPercent")
}

addPercent(new.numbers, FUN= floor)






























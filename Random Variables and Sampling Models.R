# The variables `green`, `black`, and `red` contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green/(green+black+red)

# Print the variable `p_green` to the console
p_green

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# The variables 'green', 'black', and 'red' contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1-p_green

# Create a model to predict the random variable `X`, your winnings from betting on green. Sample one time.
X <- sample(c(17,-1), 1, prob = c(p_green, p_not_green))

# Print the value of `X` to the console
X

# Calculate the expected outcome if you win $17 if the ball lands on green and you lose $1 if the ball doesn't land on green
p_green*17 + p_not_green*(-1)

# Compute the standard error of the random variable
abs(17 + 1) * sqrt(p_green * p_not_green)

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling
set.seed(1)

# Define the number of bets using the variable 'n'
n <- 1000

# Create a vector called 'X' that contains the outcomes of 1000 samples
X <- sample(c(17,-1), size = n, replace = TRUE, prob = c(p_green, p_not_green))
# Assign the sum of all 1000 outcomes to the variable 'S'
S <- sum(X)

# Print the value of 'S' to the console
S

# Calculate the expected outcome of 1,000 spins if you win $17 when the ball lands on green and you lose $1 when the ball doesn't land on green
1000*(p_green * 17+ p_not_green * (-1))

# Compute the standard error of the sum of 1,000 outcomes
sqrt(n) * abs(-1-17)* sqrt(p_green*p_not_green)


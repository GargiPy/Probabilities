# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- 2 / 38

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1-p_green

# Define the number of bets using the variable 'n'
m <- 100

# Calculate 'avg', the expected outcome of 100 spins if you win $17 when the ball lands on green and you lose $1 when the ball doesn't land on green
avg <- m * (17*p_green + -1*p_not_green)

# Compute 'se', the standard error of the sum of 100 outcomes
se <- sqrt(m) * abs(-17 -1)*sqrt(p_green*p_not_green)

# Using the expected value 'avg' and standard error 'se', compute the probability that you win money betting on green 100 times.
1 - pnorm(0, avg, se)

# The variable `B` specifies the number of times we want the simulation to run. Let's run the Monte Carlo simulation 10,000 times.
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# Create an object called `S` that replicates the sample code for `B` iterations and sums the outcomes.
S <- replicate(B, {
  b_win <- sample(c(17, -1), m, replace = TRUE,
                  prob = c(p_green, p_not_green))
  sum(b_win)
})

# Compute the average value for 'S'
mean(S)

# Calculate the standard deviation of 'S'
sd(S)

# Calculate the proportion of outcomes in the vector `S` that exceed $0
mean(S > 0)

# Define the number of bets using the variable 'n'
n <- 10000

# Create a vector called `X` that contains the outcomes of `n` bets
X <- sample(c(17, -1), n, replace = TRUE, prob = c(p_green, p_not_green))

# Define a variable `Y` that contains the mean outcome per bet. Print this mean to the console.
Y = mean(X)
Y

# Calculate the expected outcome of `Y`, the mean outcome per bet in 10,000 bets
17*p_green + -1*p_not_green

# Compute the standard error of 'Y', the mean outcome per bet from 10,000 bets.
SE <-abs(-1-17)*sqrt(p_not_green*p_green)
SE/sqrt(10000)

# We defined the average using the following code
avg <- 17*p_green + -1*p_not_green

# We defined standard error using this equation
se <- 1/sqrt(n) * (17 - -1)*sqrt(p_green*p_not_green)

# Given this average and standard error, determine the probability of winning more than $0. Print the result to the console.
1 - pnorm(0, avg, se)

# Use the `set.seed` function to make sure your answer matches the expected result after random number generation
set.seed(1)

# Generate a vector `S` that contains the the average outcomes of 10,000 bets modeled 10,000 times
S <- replicate(B, {
  i_win <- sample(c(17, -1), 
                  n, 
                  replace = TRUE,
                  prob = c(p_green, p_not_green))
  mean(i_win)
})

# Compute the average of `S`
mean(S)

# Compute the standard deviation of `S`
sd(S)

# Compute the proportion of outcomes in the vector 'S' where you won more than $0
mean(S>0)
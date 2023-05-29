library(dgof)
# Read the CSV files
x <- read.csv("x.csv", header = FALSE)
y <- read.csv("y.csv", header = FALSE)
 
# Convert data to numeric
x <- as.numeric(as.character(x$V1))
y <- as.numeric(as.character(y$V1))
 
# Perform the Kolmogorov-Smirnov test
ks_result <- ks.test(x, y)
 
# Print the test result
print(ks_result)

	
# visualization
plot(ecdf(x),
      xlim = range(c(x, y)),
      col = "blue")
 plot(ecdf(y),
      add = TRUE,
      lty = "dashed",
      col = "red")
 
# performing the K-S
# Test on x and y
ks.test(x, y, alternative = "l")


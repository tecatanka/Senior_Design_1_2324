# t.test(x, y = NULL,
#        alternative = c("two.sided", "less", "greater"),
#        mu = 0, paired = FALSE, var.equal = FALSE,
#        conf.level = 0.95, …)

# Perform a one vs one comparison
# Are data independent? (By Design: Yes)
# Data Normal?
# THIS IS NOT THE WAY TO GO WITH PAIRED DATA

shapiro.test(Shoes_data$matA)

library(car)
qqPlot(Shoes_data$matA)

shapiro.test(Shoes_data$matB)
qqPlot(Shoes_data$matB)

# Compare (unpaired data aprocedure)

t.test(Shoes_data$matA,Shoes_data$matB)

# PAIRED DATA COMPARISON

t.test(Shoes_data$matA,Shoes_data$matB, paired=TRUE)
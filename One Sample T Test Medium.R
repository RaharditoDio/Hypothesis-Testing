# load dataset
dataset <- read.csv("Energybar.csv", stringsAsFactors = T)
# show table
View(dataset)

# show the first 5 line on the table and descriptive statistics
summary(dataset)

# normality test
shapiro.test(dataset$Protein)

# T TEST
# The two-tailed alternative hypothesis
t.test(dataset$Protein, mu = 18, alternative = "two.sided")
# The upper-tailed alternative hypothesis
t.test(dataset$Protein, mu = 18, alternative = "greater")
# The lower-tailed alternative hypothesis
t.test(dataset$Protein, mu = 18, alternative = "less")

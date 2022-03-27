# load dataset
dataset <- read.csv("LearningMethod.csv", stringsAsFactors = T)
# show table
View(dataset)

# show the descriptive statistics
summary(dataset)

# normality test (group by method)
library(tidyverse)
library(rstatix)
dataset %>%
  group_by(Method) %>%
  shapiro_test(Result)

# homogeneity test
library(car)
leveneTest(Result ~ Method, dataset)

# homogeneous data
# The two-tailed alternative hypothesis
t.test(dataset$Result ~ dataset$Method, alternative = "two.sided",var.equal = T)
# The upper-tailed alternative hypothesis
t.test(dataset$Result ~ dataset$Method, alternative = "greater",var.equal = T)
# The lower-tailed alternative hypothesis
t.test(dataset$Hasil ~ dataset$Metode, alternative = "less",var.equal = T)

# non homogeneous data
# The two-tailed alternative hypothesis
t.test(dataset$Hasil ~ dataset$Metode, alternative = "two.sided",var.equal = F)
# The upper-tailed alternative hypothesis
t.test(dataset$Hasil ~ dataset$Metode, alternative = "greater",var.equal = F)
# The lower-tailed alternative hypothesis
t.test(dataset$Hasil ~ dataset$Metode, alternative = "less",var.equal = F)

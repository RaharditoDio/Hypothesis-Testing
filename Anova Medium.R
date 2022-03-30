###ONE WAY ANOVA###
# load dataset
dataset <- read.csv('Accessories.csv', stringsAsFactors = T)
# show table
View(dataset)

# homogeneity test
library(car)
leveneTest(Customer ~ Bundling, dataset)

# set ANOVA model
onewayanova <- aov(Customer ~ Bundling, data = dataset)

# normality test for ANOVA model
shapiro.test(onewayanova$residuals)

# show result of ANOVA test
summary(onewayanova)

# further test to determine which factors are different
TukeyHSD(onewayanova)



### TWO WAY ANOVA
# load dataset
dataset <- read.csv('Accessories.csv', stringsAsFactors = T)
# show table
View(dataset)

# homogeneity test
library(car)
leveneTest(Customer ~ Bundling*Accessories, dataset)

# set ANOVA model
twowayanova <- aov(Customer ~ Bundling + Accessories + Bundling:Accessories, data = dataset)

# normality test for ANOVA model
shapiro.test(twowayanova$residuals)

# show result of ANOVA test
summary(twowayanova)

# further test to determine which factors are different
TukeyHSD(twowayanova)

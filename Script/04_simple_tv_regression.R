# ------------
# 04_simple_tv_regression.R
# Simple Linear Regression: TV -> Sales
# ------------

# Load cleaned data again 
marketing <- read.csv("~/Desktop/marketing-regression-project/Data/mktmix datasets.csv")

# Keep only the variables we need 
marketing_small <- marketing[, c("NewVolSales", "TV")]

# Remove missing values 
marketing_clean <- marketing_small[complete.cases(marketing_small), ]

# Build simple linear regression model 
model_tv <- lm(NewVolSales ~ TV, data = marketing_clean)

# View model summary
summary(model_tv)

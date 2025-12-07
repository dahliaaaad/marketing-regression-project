# -------------------------------------------
# 05_simple_instore_regression.R
# Simple Linear Regression: InStore -> Sales
# -------------------------------------------

# Load dataset
marketing <- read.csv("~/Desktop/marketing-regression-project/Data/mktmix datasets.csv")

# Keep only the variables we need
marketing_small <- marketing[, c("NewVolSales", "InStore")]

# Remove missing values
marketing_clean <- marketing_small[complete.cases(marketing_small), ]

# Build simple linear regression model
model_instore <- lm(NewVolSales ~ InStore, data = marketing_clean)

# View model summary
summary(model_instore)

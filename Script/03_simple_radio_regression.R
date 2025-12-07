# -----------
# 03_simple_radio_regression.R
# Simple Linear Regression: Radio -> Sales
# -----------

# Load cleaned data
marketing <- read.csv("~/Desktop/marketing-regression-project/Data/mktmix datasets.csv")

# Keep only the variables we need
marketing_small <- marketing[, c("NewVolSales", "Radio")]

# Remove missing values 
marketing_clean <- marketing_small[complete.cases(marketing_small), ]

# Build simple linear regression model
model_radio <- lm(NewVolSales ~ Radio, data = marketing_clean)

# View model summary
summary(model_radio)
# ----------------------------------------------------
# 06_multiple_regression.R
# Multiple Linear Regression: Full Marketing Mix
# ----------------------------------------------------

# Load dataset
marketing <- read.csv("~/Desktop/marketing-regression-project/Data/mktmix datasets.csv")

# Keep only the variables we need
marketing_small <- marketing[, c("NewVolSales", "Radio", "InStore", "TV", "Discount")]

#Remove missing values
marketing_clean <- marketing_small[complete.cases(marketing_small), ]

# Build multiple linear regression model
model_multi <- lm(NewVolSales ~ Radio + InStore + TV + Discount, data = marketing_clean)

# View model summary
summary(model_multi)

# ---------------------------------------
# Business Scenario Prediction
# ---------------------------------------

# Example marketing plan
new_plan <- data.frame(
  Radio = 300,
  InStore = 35,
  TV = 160,
  Discount = 0.05
)

# Predict sales for this plan
predict(model_multi, new_plan)

# ---------------------------------------
# Multiple Business Scenarios
# ---------------------------------------

# Scenario 1: Low InStore, High TV
plan_1 <- data.frame(
  Radio = 300,
  InStore = 20,
  TV = 220,
  Discount = 0.03
)

# Scenario 2: High InStore, Low TV
plan_2 <- data.frame(
  Radio = 200,
  InStore = 50,
  TV = 100,
  Discount = 0.03
)

# Scenario 3: High Discount Strategy
plan_3 <- data.frame(
  Radio = 200,
  InStore = 35,
  TV = 120,
  Discount = 0.08
)

# Predict sales for each scenario
predict(model_multi, plan_1)
predict(model_multi, plan_2)
predict(model_multi, plan_3)

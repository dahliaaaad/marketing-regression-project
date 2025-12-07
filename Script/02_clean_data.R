# ---------
# 02_clean_data.R
# Clean marketing dataset
# ---------

# 1. Load raw data again
marketing <- read.csv("~/Desktop/marketing-regression-project/Data/mktmix datasets.csv")

# 2. Keep only the columns we need for regression
marketing_small <- marketing[, c("NewVolSales", "Radio", "InStore", "TV", "Discount")]

# 3. Remove rows with missing values in these columns
marketing_clean <- marketing_small[complete.cases(marketing_small), ]

# 4. Check cleaned data
str(marketing_clean)
summary(marketing_clean)

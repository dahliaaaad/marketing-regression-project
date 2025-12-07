#-------------
# 01_load_data.R
#Load and inspect marketing data
#-------------

#Load dataset using relative path
marketing <- read.csv("~/Desktop/marketing-regression-project/Data/mktmix datasets.csv")

#Preview first few rows
head(marketing)

#View data structure 
str(marketing)

#Summary statistics
summary(marketing)


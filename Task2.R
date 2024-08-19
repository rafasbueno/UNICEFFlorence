# UNICEF Florence - P3 assessment
# Aug 17th 2024

getwd()
setwd("C:\\Users\\hcsbu\\Desktop\\UNICEF-P3-assessment-public\\01_rawdata")

install.packages("ggplot2", "data.table") 
library(ggplot2)
library(data.table)

# importing and reading data
zimb <- read.csv("Zimbabwe_children_under5_interview.csv", sep = ';', header = T)
View(zimb)
str(zimb)

# transforming the variables types
zimb$child_age_years <- as.factor(zimb$child_age_years)
zimb$EC6 <- as.factor(zimb$EC6)
zimb$EC7 <- as.factor(zimb$EC7)
zimb$EC8 <- as.factor(zimb$EC8)
zimb$EC9 <- as.factor(zimb$EC9)
zimb$EC10 <- as.factor(zimb$EC10)
zimb$EC11 <- as.factor(zimb$EC11)
zimb$EC12 <- as.factor(zimb$EC12)
zimb$EC13 <- as.factor(zimb$EC13)
zimb$EC14 <- as.factor(zimb$EC14)
zimb$EC15 <- as.factor(zimb$EC15)

attach(zimb)

# creating tables
#frequency
EC6 <- table(EC6, child_age_years)
EC7 <- table(EC7, child_age_years)
EC8 <- table(EC8, child_age_years)
EC9 <- table(EC9, child_age_years)
EC10 <- table(EC10, child_age_years)
EC11 <- table(EC11, child_age_years)
EC12 <- table(EC12, child_age_years)
EC13 <- table(EC13, child_age_years)
EC14 <- table(EC14, child_age_years)
EC15 <- table(EC15, child_age_years)

# chi-square test
cq_test_EC6 <- chisq.test(EC6)
cq_test_EC7 <- chisq.test(EC7)
cq_test_EC8 <- chisq.test(EC8)
cq_test_EC9 <- chisq.test(EC9)
cq_test_EC10 <- chisq.test(EC10)
cq_test_EC11 <- chisq.test(EC11)
cq_test_EC12 <- chisq.test(EC12)
cq_test_EC13 <- chisq.test(EC13)
cq_test_EC14 <- chisq.test(EC14)
cq_test_EC15 <- chisq.test(EC15)


# relative frequency
EC6p <- round(prop.table(EC6, margin = 2), 2)
EC7p <- round(prop.table(EC7, margin = 2), 2)
EC8p <- round(prop.table(EC8, margin = 2), 2)
EC9p <- round(prop.table(EC9, margin = 2), 2)
EC10p <- round(prop.table(EC10, margin = 2), 2)
EC11p <- round(prop.table(EC11, margin = 2), 2)
EC12p <- round(prop.table(EC12, margin = 2), 2)
EC13p <- round(prop.table(EC13, margin = 2), 2)
EC14p <- round(prop.table(EC14, margin = 2), 2)
EC15p <- round(prop.table(EC15, margin = 2), 2)

# end



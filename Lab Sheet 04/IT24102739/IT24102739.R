setwd("C:/Users/it24102739/Desktop/IT24102739")
branch_data<-read.table("Exercise.txt", header = TRUE,sep = ",")

fix(branch_data)
attach(branch_data)

str(branch_data)
class(branch_data$Branch)
class(branch_data$Salary_X1)
class(branch_data$Advertising_X2)
class(branch_data$Years_X3)

boxplot(branch_data$Sales_X1,main="Box plot for Sale",outline=TRUE,outpch=8,horizontal=TRUE)
summary(branch_data$Advertising_X2)
fivenum(branch_data$Advertising_X2)
IQR(branch_data$Advertising_X2)

find_outliers <- function(x){
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3-Q1
  lower_bound <- Q1-1.5 *IQR
  upper_bound <- Q3+1.5 *IQR
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
  
}
find_outliers(branch_data$Years_X3)
  

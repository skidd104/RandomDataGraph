#1
enrollment_data <- data.frame(
  
  Course <- c("1st", "2nd", "3rd", "4th"),
  Year <- c (80, 75, 70, 60)
)

colnames(enrollment_data) <- c("Course Year", "2019-2020")
enrollment_data

#a
barplot(enrollment_data$`2019-2020`)

#b

barplot(enrollment_data$`2019-2020`,
        main = "Enrollment of BS in Computer Science,SY 2010-2011",
        names.arg = enrollment_data$Course,
        col = "darkred",
        xlab = "Curriculum Year",
        ylab = "number of students"
        
        )

#2
#a
income_data <- data.frame(
  misc_exp <- c ("Food", "Electricity", "Savings", "Miscellaneous expenses"),
  spent <- c (60, 10, 5, 25)
)
colnames(income_data) <- c("Expenses", "Spent")
income_data
View(income_data)

data_labels <- round(income_data$Spent/sum(income_data$Spent) * 100, 1)
data_labels <- paste (data_labels, "%", sep = "")
#b
pie (income_data$Spent, main = "De jesus Family Expenses", col = rainbow(length(income_data$Spent)), labels = data_labels, cex = 0.8)
legend (0.9, 0.5, income_data$Expenses, cex = 0.8, fill = rainbow((length(income_data$Spent))))
#3
data("mtcars")
View(mtcars)
#a
hist(mtcars$mpg)
#b
hist(mtcars$mpg,col= "red", breaks = 12, xlab = "mpg", border = "yellow")
#c
x <- mtcars$mpg
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
        main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)
#4
#a
data("iris")

View(iris)
Virginica_Data <- subset(iris, Species == "virginica", select = "Species")
Versicolor_Data <- subset(iris, Species == "versicolor", select = "Species")
Setosa_Data <- subset(iris, Species == "setosa", select = "Species")


Virginica_Data
Versicolor_Data
Setosa_Data

#b
virginica_df <- subset (iris, Species == "virginica", select = -c(Species))
versicolor_df <- subset (iris, Species == "versicolor", select = -c(Species))
setosa_df <- subset (iris, Species == "setosa", select = -c(Species))

Virginica_F_data <- colMeans(virginica_df)
Versicolor_F_data <- colMeans(versicolor_df)
Setosa_F_data <- colMeans(setosa_df)
species <- c ("Virginica", "Versicolor", "Setosa")
colors <- c("green", "Orange", "brown")

Virginica_F_data
Versicolor_F_data
Setosa_F_data
#c
final_form_data <- rbind (Virginica_F_data, Versicolor_F_data, Setosa_F_data)
final_form_data
View(final_form_data)

barplot(final_form_data, col = colors, beside = T)
legend ("topright", species, cex = 1, fill = colors)        




#Task 1
v1 <- 1:10
print(v1)
typeof(v1)

#Make double 'vD = vector as.double'
(vD <- as.double(v1))
print(vD)
typeof(vD)

#Task 2
v2 <- seq(from = 10, by = 8, length.out = 100)
print(v2)

#Task 3
words <- c("Fan", "Phone", "Computer", "Keys", "Dog", "Cat")
v3 <- rep_len(words, 50)
length(v3)                 
print(v3)

#Task 4
mtx <- matrix(1:20, nrow = 5, ncol = 4)
print(mtx)
typeof(mtx)

df_from_mtx <- as.data.frame(mtx)
print(df_from_mtx)
typeof(df_from_mtx)

#Task 5
studentTable <- data.frame(
  studentID = 101:110,
  firstName = c("Ike", "Jane", "Alex", "Mary", "Tom", "Sara", "Mike", "Emma", "Chris", "Lily"),
  lastName = c("Ani", "Smith", "Brown", "White", "Lee", "Green", "Taylor", "Red", "Hall", "Davis"),
  major = factor(c("CS", "IS", "IT", "CS", "IS", "IT", "CS", "IS", "IT", "CS")),
  GPA = c(3.5, 3.7, 1.8, 3.8, 2.2, 3.1, 3.2, 3.9, 2.8, 3.6)
)

print(studentTable)

# read .csv file
mbbdata <- read.csv("mbb.csv")
View(mbbdata)
head(mbbdata)
str(mbbdata)

# read txt file
mbbdata1 <- read.table("mbb.txt")
head(mbbdata1)



# import csv file
rio_csv <- import("mbb.csv")
head(rio_csv)
View(rio_csv)

# import txt file
rio_txt <- import("mbb.txt")
head(rio_txt)

# import excel file
rio_xlsx <- import("mbb.xlsx")
head(rio_xlsx)



# clear environment
rm(list = ls())
#Step 3, create vector
studentID <- c(1012,1101,1280,2001,2003)
firstName <-c("Mike", "Billy", "Maddie", "Bruce", "Ike") 
lastName <-c("Bibby", "Edwards", "Fox", "Wanye","Ani")
passFail <-c(TRUE, TRUE, FALSE, TRUE,TRUE)

print(studentID)
print(firstName)
print(lastName)
print(passFail)

#checking type
typeof(studentID)
typeof(firstName)
typeof(lastName)
typeof(passFail)

is.double(studentID)
is.character(firstName)
is.character(lastName)
is.logical(passFail)

#Step 4, create dataframe
studentTable <- data.frame(studentID, firstName, lastName, passFail)

print(studentTable)
typeof(studentTable)
is.list(studentTable)

#Step 5, create matrices

dataElement1 <- c(1:20)
m1 <- matrix(dataElement1, nrow = 5, ncol = 4)
print(m1)

dataElement2 <- 1:24
m2 <- matrix(dataElement2, nrow = 3, ncol = 8)
print(m2)

#checking type
typeof(m1)
typeof(m2)
is.character(m1)
is.double(m2)

#Step 6, create arrays
a1 <- array(c(1:60),c(4,5,3))
print(a1)

a2 <- array(letters[1:60], c(4,5,3))
print(a2)


# Create list #7
studentList <- list(studentID, firstName, lastName, passFail)
print(studentList)
str(studentList)

studentList2 <- list(studentID, firstName, lastName, passFail, studentList)
print(studentList2)

#clear environment
rm(list=ls())
#How to run code
1 + 1 + 2

#Case sensitivity
letters #Built-in English alphabets in small case.
LETTERS #Built-in English alphabets in capital.

#Variable assignment
a = 1
b <- 1
20 == 18 #Comparing whether 'left' equals to 'right.'
20 = 18 #This is wrong. Try and see what happens.

#Comment
1+1+1
1+1#+1
#1+1+!

#Variable versus String
str1 <- "Hello"
print(str1)
str2 = 'Goodbye'
print(str2)
str3 <- Welcome 

#Basic data type
class(1)
class("Hello")
class(1==2)

a <- 1
b <- 2
c <- "Hello"
d <- 3 > 1

a+b
c+c
print(d)

# Data container
v1 <- c(1,2,3)
print(v1)
v2 <- c("1","2","3")
print(V2)
v3 <- c(1,2,"3")
print(v3)

# Data frame 
df1 <- data.frame(
  name = c("สมชาย","สมหญิง","สมหมาย")
  ,age = c(21,43,57)
  ,male = c(T,F,T)
  )

print(df1)
View(df1)
head(df1,n=1)
tail(df1,n=1)
str(df1)

# Accessing Data frame 
View(mtcars)
mtcars$mpg
mtcars[,1]
mtcars[,"mpg"]
mtcars[1,]
mtcars[["mpg"]]
mtcars[1,1]

mtcars[1:3,5:7]
mtcars[which(mtcars$mpg > 30),]

library(tidyverse)
mtcars %>%
  filter(mpg > 30)

# Function
round_chr <- function(number, decimal){
  n1 <- round(number,decimal)
  n2 <- as.character(n1)
  return(n2)
}

round_chr(12.3445,1)

# HELP!
?mean
??glm

# R packages
install.packages("RColorBrewer", dep = T)
library(RColorBrewer)

# Bioconductor packages
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biostrings")
library(Biostrings)

# Working directories
getwd()
setwd("") # Try "Tab" auto-fill

# Data import
library(readr)
library(readxl)
dat1 <- read.csv()
dat2 <- read_csv()
dat3 <- read_excel()

# Beginners' bugs
vec1 <- c(1,2,3 4)
vec2 <- c(1,2,3,4,)
vec3 <- c("1","2","3,"4")
vec4 <- c("1","2","3"","4")
vec5 <- c(1,2,3
vec6 <- c(1,2,3,4)
print(Vec6)
vec7 <- c("red","blue",green)

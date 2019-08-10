
#to set the  working directory
setwd("C:\\Users\\hag5kor\\Desktop\\Shanu\\ATI\\Regression\\")

#to get the current working directory
getwd()


setwd("C:\\Users\\hag5kor\\Desktop\\Shanu\\ATI\\")

#either use two backslash or one forward slash in path
setwd("C:/Users/hag5kor/Desktop/Shanu/ATI/")


#can be used as calculator
1+11
2+3
4-3
5*6
4/2



#modulo operator to find the remainder
6%%5
9%%5


#to calculate the power
3^6


#to check whether value is of logical datatype
is.logical(3^6)

is.logical(TRUE)
is.logical(F)

#to check whether value is of numeric datatype
is.numeric(3^6)

is.integer(1)
class(1)

is.integer(1L)
is.character("Name")
is.character(30)

integer_value<- 1L
is.integer(integer_value)


is.numeric("6")

#To check the data type is. / to convert  as.
is.character("4")

#create variable called num1 and check the datatype
num1<-"4"
num1="4"
print(Num1)
class(num1)

#it will not change in orignal variable until we use assignment ope
as.numeric(num1)
print(num1)

num1<-as.numeric(num1)
print(num1)

char_var<- "Aeroplane"
as.numeric(char_var)


is.numeric(num1)

num1<-as.numeric(num1)
is.numeric(num1)
class(num1)

var1<- "checking"
as.numeric(var1)

as.integer(-7.8)

#To know the data type/class of variable/value
class(num1)
class(FALSE)
class("Fish")
class(1.3)
class(3L)

#########################################################################################################
#vector creation
num_vec<- c(2,3,4,5)
print(num_vec)
class(num_vec)
str(num_vec)

mark_vector<- c(35, 45, 50, 17, 40)
print(mark_vector)

#to check the class
class(mark_vector)
#to know the length of vector
length(mark_vector)


#create fruit vector
char_vec<- c("Apple","Orange", "Grapes")
print(char_vec)


#logical vector used for poll, agree/disagree
vec1<- c(TRUE, FALSE,FALSE, TRUE)
print(vec1)


mark_vector<- c("gg", 45, 50, 17, 40)
print(mark_vector)


c("Apple", 7, "Orange", FALSE)

num1<-c( 7,7.6, FALSE)
print(num1)


vec2<- c(1, "Ram", TRUE,8.9)

vec3<- c(9,8,4,5)


#Fruit Seller : daily apple sales
apple_sales<- c(20, 30, 26, 34, 60, 65)

#maximum quantity sold
max(apple_sales)


#minimum quantity sold
min(apple_sales)

#to remove/delete the variable
#rm(apple_sales)

print(apple_sales)

#both minimum and maximum
range(apple_sales)

#to know total number of apple sold in last week
sum(apple_sales)


# I want to know what is average sales
mean(apple_sales)
median(apple_sales)

num_vec1<- c(1,2, 4,NA,6)
mean(num_vec1)

sort(num_vec1, decreasing = TRUE)
num_vec1<- c(1,2, 4,6, NULL)
mean(num_vec1)

mean(num_vec1, na.rm = TRUE)

sort(apple_sales)
#to arrange in decreasing order
sort(apple_sales,decreasing = TRUE)

#standard deviation in sales (deviation from mean)
sd(apple_sales)

#total number of qunatity sold
sum(apple_sales)

#number of elements in vector
length(apple_sales)

#summary
summary(apple_sales)


#sorting
sort(apple_sales)
sort(apple_sales, decreasing = TRUE)

#find cumlative daily sales
apple_sales
cumsum(apple_sales)

#number of days sold apple
length(apple_sales)

#fruit basket
fruits<- c("A","O","G","A","O")
table(fruits)

#to find unique values in vector
unique(fruits)


####################################################################################################
#Access elements in vector
#using the index
print(apple_sales)

#apple sold on day 1
apple_sales[1]

#apple sold on 3rd day
apple_sales[3]


#I want to know apple sold on day 1 and day3
apple_sales[c(1, 3)]


#I want to know apple sold on day1, day 3, day 6
apple_sales[c(1,3,6)]

#what happen if we give index more than the length of vector
apple_sales[c(1,3,6, 7)]

#apple sold on day 1 and day 5, day3
apple_sales[c(1,5,3)]


#to create sequence of number from 1 to 8
1:8
apple_sales[c(1:3)]

#sequence function in R
seq(from=1, to= 9, by=2)

#create seq of number from 1 to 50 with interval of 5

#apple sold from day 3 and day 6
apple_sales[c(3:6)]

#Calculate total number of apples sold from day 1 to day 4
sum(apple_sales[1:4])

print(apple_sales)

sum(apple_sales[c(1:4)])


#delete the apple sold on 4th day
print(apple_sales)

apple_sales[-4]
apple_sales<-apple_sales[-4]
print(apple_sales)

apple_sales<- apple_sales[-4]
print(apple_sales)

#delete the apple sold on 2nd and 4th day
apple_sales[c(-2,-4)]

#using the logical sequence
print(apple_sales)
apple_sales[c(TRUE, TRUE, FALSE, TRUE, FALSE)]


#Iwant to know how many days apples sold more than 25
apple_sales>25

apple_sales[apple_sales>25]

#IS there any day I have sold apple more than 50
apple_sales>50

apple_sales[apple_sales<50]

apple_sales[-2]
apple_sales[c(1,3,4,5,6)]

#using conditions
#logical Operator
# <   :less than,
# >   : greater than,
# >=, <= : greater than, less than
# ==  :equal to
# !=  :not equal to
#provide TRUE/FALSE output

#student marks
marks<- c(80, 30, 45, 65, 56,70,30)

#how many students scored more than 40

#Which student marks greater than 40
marks>40

#to know the marks greater than 40
marks[marks>40]

#how many students
length(marks[marks>40])


#how many students scored less than 35
marks<35
marks[marks<35]
length(marks[marks<35])



marks<35
marks[marks<35]
length(marks[marks<35])

#Is there any student who scored full mark out of 80

length(marks[marks==80])
marks==80

#atleast one  element in vector should satisfy the condition
any(marks==80)

#all the element should satisfy the condition
all(marks>35)



marks==80
marks[marks==80]
length(marks[marks==80])

any(marks==80)

#is there any student who failed in the class (threshold= 35)

#is my all students scored more than 40
all(marks>40)



#which element in marks vector equal to 20
marks==20


#which element in marks vector not equal to 30
marks!=30


#to check condition which is true/ false for all elements
#Is all students scored more than 30?
all(marks>30)
#Is all students scored less than 70?
all(marks<70)

#Is any student scored less than 20?
all(marks<=20)

#Is any student scored equal to or more than 80?
all(marks >= 80)

#want to filter marks>40 and marks<60
print(marks)
marks>40 & marks<60
marks[marks>40 & marks<60]

marks==65 | marks==70
marks[marks==65 | marks==70]

#filtering/ Subsetting in vector based on condition
#We can filter using Index (!!starts from 1)
#or using logical sequence, should be of length of vector
#student marks
marks<- c(80, 30, 45, 65, 56,70,30)
#We can filter using Index (!!starts from 1)
marks[c(1,3,5)]
#or using logical sequence, should be of length of vector
marks[c(TRUE,FALSE,TRUE, FALSE, TRUE,FALSE, FALSE)]

#Filtering according to conditions
#To filter all marks which is not equal to 30
marks[marks!=30]

#To filter all marks which is greater than 40
marks[marks>40]


#define the fruit vector
fruits<-c( "Apple", "Grapes","Banana","Apple")
print(fruits)
#filter only the Apple elements from fruits vector
fruits=="Apple"
fruits[fruits=="Apple"]

apple_fruit<-fruits[fruits=="Apple"]
print(apple_fruit)

#filter apple and banana
fruits[fruits=="Apple" | fruits=="Banana"]

#will not filter properly if letter case is different
fruits[fruits=="Apple" | fruits=="banana"]

#want to filter marks greater than 30 and less than 60
marks<- c(30, 50, 60, 20, 80)
print(marks)
marks[marks>30 & marks<60]

#filter fruits using %in% easy when multiple value need to
#be filtered
fruits[fruits %in% c("Apple","Banana")]


fruits[fruits %in% c("Apple","Banana")]

fruits[fruits=="Apple" | fruits=="Banana"]

#to know the position of element in vector
which(fruits=="Apple")

print(marks)
#tell me the index where marks greater than or equal to 40
which(marks>=40)


#replacement
#To replace all marks which is greater than 40 with "Excellent"
marks[marks>40]
marks[marks>40] <- "Excellent"
print(marks)


#create vector sequence from 11 to 20
num_seq<- 11:20
print(num_seq)

num_seq1<- seq(from=11, to=20, by=1)
print(num_seq1)

#replace all the even numbers with 3
#gives remainder, if divisible by 2 then 0 otherwise 1
num_seq %%2

#to check number is even or not , remainder should be 0
num_seq %%2==0

num_seq[num_seq %%2 ==0]

num_seq[num_seq %%2 ==0]<-3
print(num_seq)


num_vec<- 11:20
print(num_vec)

num_vec1<- seq(from=11, to=20, by=1)
print(num_vec1)

num_vec %% 2 ==0

num_vec[num_vec %%2==0]

num_vec[num_vec %%2==0]<- 3
print(num_vec)

#create sequence from 11 to 20, replace odd numbers by 2

num_vec<- seq(from=11 , to= 20, by=1)
print(num_vec)

num_vec%%2==1

num_vec[num_vec%%2==1]<-2
print(num_vec)

#create sequence from 11 to 20, replace multiple of 3 by '$' sign
num_vec<- seq(from=11 , to= 20, by=1)
print(num_vec)

num_vec%%3==0
num_vec[num_vec%%3==0]

num_vec[num_vec%%3==0]<-"$"
print(num_vec)


#to find whether the number is multiple of five or not
num_vec%%2 ==0

num_vec[num_vec%%2==0]<-2
print(num_vec)


#add new element in vector
print(marks)
c(marks, 90)

c(marks, c(1,2,4))

num_vec<- 1:20

#to replace even number with 0
vec1<- c(8, 7, 6, 2, 4,10)

vec1%%2 ==0

vec1[vec1%%2 ==0]

vec1[vec1%%2 ==0]<- 0
vec1

#create vector containing sequence of numbers from 10 to 30

# replace number which are multiple of three by '$' sign

########################################################################################
#vector arithmatic operation
#the +, -,  /,  *, %% operation will be applied element-wise

vec1<- c(2,3,4,5)
vec2<- c(9,8,4,5)
print(vec1)
print(vec2)

#add 4 to all elements of vector 1
vec1+4
vec1-7
vec1/2
vec1%%3
vec1*2

#we can add/divide/multiply/find remainder two vectors when length of both vectors is equal
vec1+vec2
vec1/vec2

vec1*vec2
vec2%%vec1

vec3<- c(1,2,4,7,8,9)
print(vec1)
print(vec3)
vec1+vec3-vec2

#BE careful with recycling
#When applying an operation to two vectors that requires them to be the same length,
#R automatically recycles, or repeats, the shorter one,
#until it is long enough to match the longer one.

c(1,2,4) + c(6,0,9,20,22, 45, 56)

c(1,2,4,1,2,4,1) + c(6,0,9,20,22)

#if we try to add chraracter and number will throw error
c("1","2")+c(1,2)

round(19.678888, digits = 0)

####################################################################
#NA values
sales<- c(100, 150, NA, 30, 60)
print(sales)
mean(sales)

mean(sales, na.rm = TRUE)
max(sales)


max(sales)
max(sales, na.rm=TRUE)
length(sales)

#NULL values : R Ignores NULL values
sales<- c(100, 150, NULL, 30, 60)
mean(sales)

#diff function is used to find difference from previous element in vector
#Used in time series data to remove trend
num_seq<- 11:20
diff( num_seq)

num_seq<-c(10, 30, 20, 40)
diff(num_seq)

#diff function can also be used to convert cumulative series to actual series

############################################################################
#create factor data
gender_cat<- factor(c("F","M","M","F"))
print(gender_cat)

c(gender_cat,"A")

gender_cat[gender_cat=="F"]<- "D"

#unique categories
levels(gender_cat)

#to define categories
#create factor data
gender_cat<- factor(c("F","M","M","F"), levels= c("F","M","f","m",
                                                  "male","Female"))
print(gender_cat)


#factor variable
gend_cat<- factor(c("Male","Female", "Female", "Female"))
gend_cat


gend_cat<- factor(c("Male","Female", "Female", "Female"),
                  levels = c("Male","Female", "M","F"))
gend_cat

#will give NA, as the catogery not defined
gend_cat[gend_cat=="Male"]<-"M"
gend_cat



siz_cat<- factor(c("S","M","S"), levels = c("S","M","XS","L","XL"))
siz_cat

##############################################################################################
#Dataframe
#A collection of vector of same length
#Two Dimensional, arranged in rows and columns
#columns can contain different data types
#For instance, one column may consist
#of numbers, and another column might have character
#strings.
#But within column it should be of same data type

#To create Data Frame
name<- c("Jack","Jill", "Riya")
age<- c(6, 11, 9)
kids<- data.frame(name, age, stringsAsFactors = FALSE)
print(kids)
str(kids)

name<- c("Jack","Jill", "Riya","Riya")
age<- c(6, 11)
data.frame(name, age, stringsAsFactors = FALSE)


#by default in R all the string/character will be read as factor
kids<- data.frame(name, age)
print(kids)
str(kids)
kids$name<- as.character(kids$name)
str(kids)

name<- c("Jack","Jill")
age<- 7
kids<- data.frame(name, age, stringsAsFactors = FALSE)
print(kids)


#to count number of rows
nrow(kids)
#to count number of columns
ncol(kids)

#to count both rows and columns
dim(kids)

#to know the properties of dataset/columns
str(kids)

#addition of new row
new_row<-data.frame(name="Rahul", age= 6,
                    stringsAsFactors = FALSE)

kids<- rbind(kids, new_row)
print(kids)

new_row<-data.frame(name=c("Rahul","Ram"), age= c(6,6),
                    stringsAsFactors = FALSE)

kids<- rbind(kids, new_row)
print(kids)


str(kids)


#To add new column
weight<- c(25, 20, 18, 19, 20, 23)

kids<- cbind(kids, weight)
print(kids)
place<- c("kor","Bel","BTM","kor","bel","BTM")

kids<- cbind(kids, place)
str(kids)

kids1<- data.frame(kids, place, stringsAsFactors = FALSE)
str(kids1)

#Exception for dataframe
name<-c("Rahul","Tiya")
age<- c(7, 5, 4, 8, 9, 6)
data.frame(name, age, stringsAsFactors = FALSE)

name<-c("Rahul","Tiya")
age<- c(7, 5, 4)
data.frame(name, age, stringsAsFactors = FALSE)


#How to access dataframe elements
name<- c("Rahul", "Tiya", "Heena", "Rohan", "Ram")
age<- c( 5, 6, 8, 4, 7)
weight<- c( 20, 19, 30, 15, 13)
kids<-data.frame(name,age, weight,stringsAsFactors = FALSE)
str(kids)


new_name<- c(name,age, weight)
str(new_name)


str(kids)
print(kids)

#how to access element, rows, columns in data frame
#to extract the second column
kids[,2]

kids[2]


#extract first and third column
kids[,c(1,3)]

#to extract second row
kids[2,]

#extract second and third row
kids[c(2,3),]

#extract second and third row, and first and fourth column
kids[c(2,3),c(1,4)]


#extract value lying at 4th row and 3rd column
kids[4,3]

#to extract 2nd row from weight column
kids[2,3]
print(kids)

kids[, -3]
kids[,"weight"]

kids[, c("name","weight")]

#column names for dataframe
colnames(kids)
rownames(kids)

#extract age, name column from kids dataset without using index
kids[, c("age", "name")]

#second row from weight and age column
kids[2, c("weight","age")]

str(kids)
kids$name
kids[,'name']

#to extarct weight column
kids[,3]
kids[,"weight"]
kids$weight

#to install rio package
install.packages("rio",dependencies = TRUE)

#library rio is used to read file/ write file
library(rio)

#creating file path to read employee data
file_path<- "C:\\Users\\hag5kor\\Desktop\\Shanu\\ATI\\R Prerequisites (1)\\EmpData.csv"

# to read the file
employee_data<- import(file_path)

str(employee_data)

#read also using setwd
setwd("C:\\Users\\hag5kor\\Desktop\\Shanu\\ATI\\R Prerequisites (1)\\")
getwd()
employee_data1<- import("EmpData.csv")
str(employee_data1)

#To read data from csv file
file_path="C:/Users/hag5kor/Desktop/Shanu/ATI/EMplData.csv"
file_path="C:\\Users\\hag5kor\\Desktop\\Shanu\\ATI\\EMplData.csv"

#employee_data<- read.csv(file_path, stringsAsFactors = FALSE)
library(rio)
employee_data<-import(file_path)
str(employee_data)

#to get the column names
colnames(employee_data)

#Extract required columns
employee_data<-employee_data[,1:8]
colnames(employee_data)

#to observe the first 6 / last 6 rows
head(employee_data)
head(employee_data,n = 18)
tail(employee_data)

# without using head function to observe first 20 rows
print(employee_data[1:20,])


#where my employee are located
unique(employee_data$LOCATION)

#unique dept in the employee_data
unique(employee_data$DEPT)

#to know the distribution of each variable
summary(employee_data)

#to know the maximum CTC for employee
max(employee_data$CTC)

#to know the minimum CTC for employee
min(employee_data$CTC)

#I want to know in Bangalore location maximum salary for employee
#also the minimum salary in bangalore location

bang_emp<-employee_data[employee_data$LOCATION=="Bangalore",]

max(bang_emp$CTC)
min(bang_emp$CTC)




#filter the employees for bangalore location
unique(employee_data$LOCATION)
bang_employee<- employee_data[employee_data$LOCATION=="Bangalore", ]
unique(bang_employee$LOCATION)
str(bang_employee)

max(bang_employee$CTC)

max(employee_data[employee_data$LOCATION=="Bangalore","CTC"])

#how many male and female
table(employee_data$GENDER)


#maximum salary for male employees and female employees
unique(employee_data$GENDER)
colnames(employee_data)
max(employee_data[employee_data$GENDER== "Female","CTC"])
max(employee_data[employee_data$GENDER== "Male","CTC"])

export(bang_emp, "Bang_emp.xlsx")

#Assignments
#maximum salary, minimum salary, average salary in each location, in each dept
#maximum and minimum performance rating for each location
#count the employees in each location
#install ggplot2, dplyr, lubridate package




#to know the total number of employee
nrow(employee_data)

#to check the total number of employee in bangalore location
nrow(employee_data[employee_data$LOCATION=="Bangalore",])



# to observe first few rows
head(employee_data)
# to observe last few rows
tail(employee_data)

#Want to know maximum employee CTC
max(employee_data$CTC)


#Filter employee data for Bangalore location
unique(employee_data$LOCATION)
banglore_emp<-employee_data[employee_data$LOCATION=="Bangalore", ]
head(banglore_emp)
unique(banglore_emp$LOCATION)

nrow(banglore_emp)
unique(banglore_emp$DEPT)

#for each of the location find minimum CTC , maximum CTC
#Maximum salary for each location
max(employee_data[employee_data$LOCATION=="Bangalore", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Kolkata", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Chennai", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Hyderabad", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Haryana", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Delhi", "CTC"], na.rm=TRUE)



#Minimum salary for each location
min(employee_data[employee_data$LOCATION=="Bangalore", "CTC"], na.rm=TRUE)
min(employee_data[employee_data$LOCATION=="Kolkata", "CTC"], na.rm=TRUE)
min(employee_data[employee_data$LOCATION=="Chennai", "CTC"], na.rm=TRUE)
min(employee_data[employee_data$LOCATION=="Hyderabad", "CTC"], na.rm=TRUE)
min(employee_data[employee_data$LOCATION=="Haryana", "CTC"], na.rm=TRUE)
min(employee_data[employee_data$LOCATION=="Delhi", "CTC"], na.rm=TRUE)

#Is all department available in all location
length(unique(employee_data[employee_data$LOCATION=="Bangalore", "DEPT"]))
unique(employee_data[employee_data$LOCATION=="Kolkata", "DEPT"])
unique(employee_data[employee_data$LOCATION=="Chennai", "DEPT"])
unique(employee_data[employee_data$LOCATION=="Hyderabad", "DEPT"])
unique(employee_data[employee_data$LOCATION=="Haryana", "DEPT"])
unique(employee_data[employee_data$LOCATION=="Delhi", "DEPT"])

length(unique(employee_data[employee_data$LOCATION=="Bangalore", "DEPT"]))
length(unique(employee_data[employee_data$LOCATION=="Kolkata", "DEPT"]))
length(unique(employee_data[employee_data$LOCATION=="Chennai", "DEPT"]))
length(unique(employee_data[employee_data$LOCATION=="Hyderabad", "DEPT"]))
length(unique(employee_data[employee_data$LOCATION=="Haryana", "DEPT"]))
length(unique(employee_data[employee_data$LOCATION=="Delhi", "DEPT"]))

#How many employee are working in each location
employee_data$LOCATION=="Bangalore"

nrow(employee_data[employee_data$LOCATION=="Bangalore",])

nrow(employee_data[employee_data$LOCATION=="Bangalore",])
nrow(employee_data[employee_data$LOCATION=="Kolkata",])
nrow(employee_data[employee_data$LOCATION=="Chennai",])
nrow(employee_data[employee_data$LOCATION=="Hyderabad",])
nrow(employee_data[employee_data$LOCATION=="Haryana",])
nrow(employee_data[employee_data$LOCATION=="Delhi",])

#How many male and Female employee in employee data
unique(employee_data$GENDER)
nrow(employee_data[employee_data$GENDER=="Female",])
nrow(employee_data[employee_data$GENDER=="Male",])


#Accessing data frame
#Extract the columns using index
#Extract the columns using column name


#using dollar

#Extract rows according to condition
unique(employee_data$LOCATION)
sub_emp_data<- employee_data[employee_data$LOCATION=="Bangalore", ]

sub_emp_data<- employee_data[employee_data$LOCATION=="Bangalore","DEPT" ]


sub_emp_data$DEPT

unique(sub_emp_data$DEPT)

#Find Average salary for employees located in Bangalore
employee_data[employee_data$LOCATION=="Bangalore","CTC" ]
mean(employee_data[employee_data$LOCATION=="Bangalore","CTC" ], na.rm=TRUE)

mean(sub_emp_data$CTC, na.rm=TRUE)

#Maximum salary for each location
max(employee_data[employee_data$LOCATION=="Bangalore", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Kolkata", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Chennai", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Hyderabad", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Haryana", "CTC"], na.rm=TRUE)
max(employee_data[employee_data$LOCATION=="Delhi", "CTC"], na.rm=TRUE)

max(employee_data$CTC)

employee_data[employee_data$CTC==max(employee_data$CTC), 'LOCATION']


unique(employee_data[employee_data$LOCATION=="Kolkata","DEPT"])

unique(employee_data$LOCATION)

max(employee_data$CTC, na.rm = TRUE)

employee_data$Company<- "Mahindra"
head(employee_data)


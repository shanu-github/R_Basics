#Add elements to a vector.
vec1<-c(1,2,3,4,5,7)
append(vec1, 3)
append(vec1, 8, after=3)
c(vec1, 3)

################################################################
#Read/write file
#reading employee data
library(rio)
setwd("C:/Users/hag5kor/Desktop/Shanu/ATI/")
getwd()
file_path="EMplData.csv"
employee_data<- import(file_path)

str(employee_data)

#Extract required columns
employee_data<-employee_data[,1:8]

str(employee_data)
colnames(employee_data)

##########################################################
#Data Manipulation
#I want to know location wise average salary, maximum salary, minimum salary
#install.packages("dplyr", dependencies = TRUE)

library(dplyr)
#%>% is pipe operator

#want to find average CTC for each location
employee_data %>% group_by(LOCATION) %>%
 summarise(avg_ctc=mean(`ANNUAL PERFORMANCE RATING`, na.rm=TRUE))

#to store the average salary

#want to find maximum CTC for each location and each dept
max_ctc_locdept = employee_data %>% group_by(LOCATION, DEPT) %>%
  summarise(Max_ctc=max(CTC, na.rm=TRUE))

export(max_ctc_locdept, "LocDept_MaxCTC.csv")
export(max_ctc_locdept, "LocDept_MaxCTC.xlsx")



employee_data %>% group_by(LOCATION) %>%
  summarise(min_ctc=min(CTC, na.rm=TRUE))

employee_data %>% group_by(LOCATION) %>%
  summarise(max_ctc=max(CTC, na.rm=TRUE))

#I want to know location and Gender wise average salary, maximum salary, minimum salary
employee_data %>% group_by(LOCATION,GENDER) %>% summarise(avg_ctc=mean(CTC, na.rm=TRUE))
employee_data %>% group_by(LOCATION,GENDER) %>% summarise(max_ctc=max(CTC, na.rm=TRUE))
employee_data %>% group_by(LOCATION,GENDER) %>% summarise(min_ctc=min(CTC, na.rm=TRUE))

#I want to know location and department wise average salary, maximum salary, minimum salary
loc_dept_ctc<-employee_data %>% group_by(LOCATION,DEPT) %>% summarise(avg_ctc=mean(CTC, na.rm=TRUE))


employee_data %>% group_by(LOCATION,DEPT) %>% summarise(max_ctc=max(CTC, na.rm=TRUE))
employee_data %>% group_by(LOCATION,DEPT) %>% summarise(min_ctc=min(CTC, na.rm=TRUE))

employee_data %>% summarise(max_ctc= max(CTC, na.rm=TRUE))

#how many employee in each location
employee_data %>% count(LOCATION)

count(employee_data,LOCATION)

employee_data %>% count(LOCATION)


#how many male & female employee
#how many male & female employee each location


employee_data %>% count(GENDER)

#how many male & female employee
sub_data<-employee_data %>% count(LOCATION,GENDER)

#To filter data for bangalore employees
bang_employee<- employee_data %>% filter(LOCATION== "Bangalore")

unique(bang_employee$LOCATION)

#To filter data for bangalore employees as well as kolkata employee
new_data<-employee_data %>% filter(LOCATION== "Bangalore" | LOCATION== "Kolkata")
unique(new_data$LOCATION)

loc_data<-employee_data %>% filter(LOCATION %in% c("Bangalore", "Kolkata") )
unique(loc_data$LOCATION)



#to filter data for bangalore location for male employess

employee_data %>% filter(LOCATION== "Bangalore" & GENDER=="Male")


#filter the employee data for employees where CTC> 8 lakhs
sub_data<- employee_data %>% filter(CTC>800000)
head(sub_data)
range(sub_data$CTC)



#filter the employee data for employees where CTC> 8 lakhs,extract  Name, Gender
colnames(employee_data)
sub_data<- employee_data %>% filter(CTC>800000) %>% select(NAME, GENDER)
str(sub_data)

id_data<- employee_data %>% select(`EMP ID`, NAME  )

#select column for LOCATION and DEPT and remove
sub_data<-employee_data %>% select(-LOCATION, -DEPT)
colnames(sub_data)

#drop dept column from employee data
colnames(employee_data)
sub_data<- employee_data %>% select(-DEPT)
colnames(sub_data)

#creating new column for bonus using CTC, it isCTC 10 % of CTC
employee_data$bonus<- employee_data$CTC * 10/100
str(employee_data)

employee_data$Company<-"Apple"

#using the dplyr package
employee_data<-employee_data %>% mutate(bonus_dplyr= CTC*10/100 )
str(employee_data)

#create new column using dplyr  Total_sal= CTC+Bonus

#create column for total salary,  Tsalary= CTC+bonus
employee_data = employee_data %>% mutate(Tsalary= CTC+bonus )
str(employee_data)


employee_data %>% count(LOCATION, DEPT)

table(employee_data$LOCATION)

#how many  employee in each dept
employee_data %>% count(DEPT)


#create new column increment = CTC*10/100
employee_data$increment<-  employee_data$CTC *10/100
employee_data$comapany_name<- "Mahindra"

colnames(employee_data)
head(employee_data)

#to add two new columns
employee_data<-employee_data%>% mutate(increment1= CTC*10/100) %>%
    mutate(revised_salary= increment1+CTC)

colnames(employee_data)

#to arrange/ sort the Minimum CTC in increasing order

employee_data %>% group_by(LOCATION,GENDER) %>%
  summarise(min_CTC=min(CTC, na.rm=TRUE)) %>%
  arrange(min_CTC)

#to arrange/ sort the Maximum CTC in increasing order
employee_data %>% group_by(LOCATION,GENDER) %>%
  summarise(max_CTC=max(CTC, na.rm=TRUE)) %>%
  arrange(max_CTC)

#to arrange/ sort the Maximum CTC in decreasing order
employee_data %>% group_by(LOCATION,GENDER) %>%
  summarise(max_CTC=max(CTC, na.rm=TRUE)) %>%
  arrange(desc(max_CTC))


#To filter employees located in Bangalore
employee_data %>% filter(LOCATION=="Bangalore")

#filter the employee having salary greater than 8 lakhs and arrange
#in increasing Order
employee_data %>% filter(CTC> 800000) %>% arrange(CTC)

colnames(employee_data)
#filter the employees having Performance rating is 5
employee_data %>% filter(ANNUAL.PERFORMANCE.RATING==5) %>% head(n=10)


# select  employee id column, performance column
colnames(employee_data)
employee_data %>% select (?..EMP.ID, ANNUAL.PERFORMANCE.RATING)%>% head()

#delete the column increment
colnames(employee_data)
employee_data<- employee_data %>% select(-increment)
colnames(employee_data)


#To filter for LOcation= bangalore and gender=Male
employee_data %>% filter(LOCATION=="Bangalore" & GENDER=="Male") %>% head()

#filter data for two location Bangalore, Kolkata
unique(employee_data$LOCATION)
employee_data %>% filter( LOCATION=="Bangalore" | LOCATION== "Kolkata") %>%
  head()

employee_data %>% filter(LOCATION %in% c("Bangalore","Kolkata"))

#Filter all data where location is bangalore and Ctc> 7 lakh
employee_data %>% filter(CTC> 700000 & LOCATION== "Bangalore") %>%
  head() %>% select(NAME,GENDER, CTC)

employee_data %>% group_by(LOCATION,DEPT) %>%
  summarise(max_CTC=max(CTC, na.rm=TRUE)) %>% arrange(desc(max_CTC))


#exract only 9 rows of data randomly for test
sample_n(employee_data, 9)

#exract only 10% of data for test
sample_frac(employee_data, 0.10)


#replacement in R
name<- c("Jack","Jill", "Riya")
age<- c(6, 11, 9)
kids<- data.frame(name, age, stringsAsFactors = FALSE)
print(kids)

kids %>%  mutate(age=replace(age, name=="Jack", 20))

#second way
kids$age<- ifelse(kids$name=='Jack', 30,kids$age)


#########################################################################
#Joining operations
# data frame 1
df1 = data.frame(CustomerId = c(1:6), Product = c("Oven","Radio",
                                                  "Oven","Television",
                                                  "Oven","Television"))
print(df1)
# data frame 2
df2 = data.frame(CustomerId = c(2, 4, 6, 8), Place = c("Mumbai","Kolkata",
                                                    "Bangalore","Mumabi"))

print(df2)

inner_join(df1, df2)

inner_join(df1, df2, by=c("CustomerId"))

#when column names are different specify using by
inner_join(df1, df2, by= c("CustomerId"="Customer"))


full_join(df1, df2)

#Remove the data which is present in second data
anti_join(df1, df2)



left_join( df1, df2)

left_join(df2, df1)


right_join(df1, df2)


left_join(df1, df2)
left_join(df2, df1)

right_join(df2, df1)


full_join(df1, df2, by=c())

#inner_join: comman rows in both the dataset
#full_join: all rows in both the dataset
inner_join(df1, df2)
full_join(df1, df2)

#To create Data Frame
name<- c("Jack","Jill","Ram","Ashok")
age<- c(6,6, 9, 10)
df1<- data.frame(name, age, stringsAsFactors = FALSE)
df1

name<- c("Jack", "Riya","Ram", "Shyam")
weight<- c(7,  10,11, 8)
df2<- data.frame(name, weight, stringsAsFactors = FALSE)
df2

inner_join(df1, df2)
full_join(df1, df2)

#left_join: left data is master data
#right_join : right data is master data
left_join(df1, df2)
right_join(df1, df2)
full_join(df1, df2)
inner_join(df1,df2)

#when column names are different
left_join(df2, df1, by = c("name1"="name2"))


######################################################################
#Data Cleaning
#checking if na value present
name<- c("Jack","Jack","Jill","Jill", "Riya","Ram")
age<- c(6,6,11, 9,10, NA)
weight<- c(17,17, NA, 20,30, 80)
kids<- data.frame(name, age,weight, stringsAsFactors = FALSE)
print(kids)


#to count the number of NA/ missing points
is.na(kids)
sum(is.na(kids))

summary(kids)


#Remove the rows which cotains NA
complete.cases(kids)

complete_data<- kids[complete.cases(kids),]

summary(complete_data)


#just remove the row for which weight column value is missing
is.na(kids$weight)

kids[is.na(kids$weight),]


kids[!is.na(kids$weight), ]



#just remove the row for which age column value is missing
kids[!is.na(kids$age), ]

#using dplyr package
kids %>% filter(!is.na(age))


#replace the na values in weight column by average weight
kids[is.na(kids$weight), ]

kids[is.na(kids$weight), "weight"]

kids[is.na(kids$weight), "weight"] = mean(kids$weight, na.rm= TRUE)
print(kids)

#To know/ find duplicate rows in dataset
print(kids)
duplicated(kids)


kids[duplicated(kids),]

#To delete duplicate rows in dataset
kids[!duplicated(kids),]

print(kids)

duplicated(kids$name)

# remove duplicate according to one particular column
print(kids)
kids[!duplicated(kids$name),]

# remove duplicate according to one particular column age



#to delete data in R
rm(sub_data)

#replacing all na with zero
employee_data[is.na(employee_data), ] <- 0

#replacing all na in CTC column with zero
employee_data[is.na(employee_data$CTC), 'CTC'] <- 0

#replacing all na in CTC column with median
employee_data$CTC[is.na(employee_data$CTC)] <- mean(employee_data$CTC, is.na=TRUE)

#replacing all negative CTC column value with zero

#To create Data Frame
name<- c("Jack","Jack","Jill","Jill", "Riya","Ram")
age<- c(6,6, 11, 9,10, NA)
weight<- c(17,17, NA, 20,30, 80)
kids<- data.frame(name, age,weight, stringsAsFactors = FALSE)
kids

#to count number of NA's/ missing value
sum(is.na(kids))

#To remove all rows contains NA
kids[complete.cases(kids), ]

#to remove row if age column contains NA
kids[!(is.na(kids$age)),]

#replace NA value in age column with mean age
kids[is.na(kids$age), 'age'] = mean(kids$age, na.rm= TRUE)
kids

#To remove duplicates from data
kids[!duplicated(kids),]
kids[duplicated(kids),]

#to remove duplicate from particular column
kids[!duplicated(kids$name),]

print(kids)
#Convert all value to same case
kids$name<- toupper(kids$name)
print(kids)

kids$name<- tolower(kids$name)
print(kids)

#Modifying the column name
colnames(kids)
colnames(kids) = c("Name","Age", "Weight")
print(kids)

colnames(employee_data)[1]<- "Employee_ID"
colnames(employee_data)[1:3]<- c("Employee_ID","Name", "DOJ")

colnames(employee_data)[colnames(employee_data)=="GENDER"]<-"GCategory"


############################################################
#Date Conversion
#install.packages("lubridate", dependencies = TRUE)
library(lubridate)

unique(employee_data$`DATE OF JOINING`)
employee_data$`DATE OF JOINING`<- dmy(employee_data$`DATE OF JOINING`)
str(employee_data)
class(employee_data$`DATE OF JOINING`)

time_t1<- "Monday, 05 March 2007"
time_t1
class(time_t1)
time_t1<-dmy(time_t1)
class(time_t1)
print(time_t1)
class(ymd(time_t1))


t1<-"2011-06-04 12:00:00"
class(t1)
ymd_hms(t1)


class(ymd_hms(t1))

#=====> Simple Dates <=====#
x <- c("2006-07-19", "2006-07-23", "2006-07-21",
       "2006-07-22", "2006-07-23")
class(x)
new_x<-ymd(x) # format="year month day"
class(new_x)

#=====> Abbreviated Years <=====#
x <- c("06-07-19", "06-07-20", "06-07-21",
       "06-07-22", "06-07-23")
ymd(x)


#=====> Dates With Times <=====#
x <- c("06-07-19, 5:12am", "06-07-20, 5:15am",
       "06-07-21, 5:18pm", "06-07-22, 5:22am",
       "06-07-23, 5:25am")
x<-ymd_hm(x)
print(x)

format(x,format = "%Y-%m-%d")



##Checks difference in vector
diff(new_x)

#To increase date by year, month, day
new_x+ years(1)
new_x+ months(2)
new_x+ days(5)

print(x)
month(x)
year(x)
day(x)


x <- c("2018-12-19", "2018-12-20", "2018-12-21")

x<-ymd(x)
class(x)


x<- ymd(x)

#to find the week day
wday(x, label = TRUE)

wday(x, label = FALSE)

new_x1<- new_x+ days(12)

new_x1-new_x

########################################################################
#plotting in R
library(ggplot2)
library(rio)
#https://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html

setwd("C:\\Users\\hag5kor\\Desktop\\Shanu\\ATI\\R Prerequisites (1)\\")
social_data<- import("SNData.csv")
colnames(social_data)
str(social_data)
library(ggplot2)


#Bar chart
ggplot(social_data, aes(x = SITE)) +   geom_bar(fill= 'Pink',
                                                color="Black")


ggplot(social_data, aes(x = SITE,  fill= GENDER)) + geom_bar()

table(social_data$SITE, social_data$GENDER)

#Bar plot for Gender
ggplot(social_data, aes(x = GENDER)) +   geom_bar()

range(social_data$AGE)

#Histogram chart
ggplot(social_data, aes(x = AGE)) +
  geom_histogram(binwidth= 5, fill="white", color= "black")


#Histogram
ggplot(social_data, aes(x = AGE, fill=SITE)) +
  geom_histogram(binwidth =5)

#Histogram
ggplot(social_data, aes(x = AGE, fill=GENDER)) + geom_histogram(binwidth = 6,
                                              color="blue")


ggplot(social_data, aes(x = AGE)) + geom_histogram(binwidth = 5,
                                                   color="blue", fill="white")


#scatter plot
ggplot(social_data, aes(x= TIMES,y= AGE)) +  geom_point()


#scatter plot
ggplot(social_data, aes(x= TIMES,y= AGE , color= SITE)) +
  geom_point(size=5)


#scatter plot
ggplot(social_data, aes(x= TIMES,y= AGE , color= SITE,
                        size= GENDER)) +  geom_point()


#scatter plot
ggplot(social_data, aes(x= TIMES,y= AGE )) +
  geom_point(color= "blue", size=3) +geom_smooth(method= "lm")


#box plot
ggplot(social_data, aes(x= SITE, y=AGE))+ geom_boxplot()+geom_jitter()

summary(social_data$AGE)



#scatter plot
ggplot(social_data, aes(x= TIMES,y= AGE, color=SITE, size=GENDER )) +
  geom_point( )


#scatter plot
ggplot(social_data, aes(x= TIMES,y= AGE , color= SITE)) +  geom_point(size=3)



#box plot using
ggplot(social_data, aes(x= SITE, y= TIMES))+ geom_boxplot()+geom_jitter()

summary(social_data$TIMES)

library(ggplot2)
num1<- c(1:50)
num2<- num1^3
num_df<-data.frame(num1,num2)
ggplot(num_df, aes(x=num1, y=num2))+geom_point()

#Line Plot
ggplot(num_df, aes(x=num1, y=num2))+geom_line()


#################################################################
#csv file reading
setwd("C:\\Users\\hag5kor\\Desktop\\Shanu\\ATI\\")
input_data<- read.csv("EMplData.csv", stringsAsFactors = FALSE)

#csv file Writing
write.csv(input_data, "output_data.csv", row.names = FALSE)

#reading xlsx file
library(xlsx)
student_data<- read.xlsx("student_data.xlsx", sheetIndex = 1)

#xlsx file Writing
write.xlsx(student_data, "output_data.xlsx", row.names = FALSE)

#txt file writing
write.table(student_data, "student.txt", quote=FALSE,
            sep="\t", row.names=FALSE)

#semicolon seprated file
write.table(student_data, "student.csv", quote=FALSE,
            sep=";", row.names=FALSE)

#can specify decimal separation
write.table(social_data, "student.csv", quote=FALSE, dec = ".",
            sep=";", row.names=FALSE)

#reading test file
read.table("student.txt",header = TRUE)

#Direct way
library(rio)
setwd("C:\\Users\\hag5kor\\Desktop\\Shanu\\ATI\\R Prerequisites (1)\\")
student_data<-import("student_data.xlsx")
print(student_data)
#to write in CSV format
export(student_data,"student1.csv")
#to write in xlsx format
export(student_data,"student1.xlsx")
#to write in txt format
export(student_data,"student1.txt")

################################################################################################
#Matrix

#how to create matrix
mat1<- matrix(1:12, nrow=4, ncol=3)
print(mat1)

ncol(mat1)
nrow(mat1)
dim(mat1)

#to access the first column
mat1[,1]


#to extract first row
mat1[1,]

#to extracr first and third row
mat1[c(1,3),]

#to extract 3rd column
mat1[,3]

#first row third element
mat1[1,3]


#accessing matrix elements
#extracting first and second row
mat1[1:2,]

#extracting first, second row and second and third column
mat1[1:2,2:3]

#extracting from first & third row the third column
mat1[c(1,3),3]


#filter the matrix elements where for first column value is greater than 2
mat1[,1]>2

mat1[mat1[,1]>2, ]


#filter using condition
print(mat1)

mat1[,1]>2
mat1
mat1[mat1[,1]>2,]

#filter the rows where 3rd column value is greater than 6
mat1[mat1[,3]>6,]


#row addition
apply(mat1, 1, sum,na.rm=TRUE)


#colum addition
apply(mat1, 2, sum, na.rm=TRUE)


mat1
sum(mat1[1:2,])

#can also be applied in data.frame
#column addition
apply(mat1, 2, sum,na.rm=TRUE)

#row bind
rbind(mat1, c(1,2))

#column bind
cbind(mat1, c(1,2))

#count number of rows and number of columns
ncol(mat1)
nrow(mat1)
dim(mat1)

#multiple/division/addition each element in matrix
mat1*2
mat1/2
mat1+4
mat1-2

mat1+mat1

mat1<- matrix(1:12, nrow=3, ncol=3)
mat1
#matrix multiplication
mat1 %*% mat1

#element wise multiplication
mat1*mat1

mat1

###########################################################
#List
list1<- list(matrix_input=mat1, name="John", vec1=c(1,2,3,4,5,6))
print(list1)

length(list1)

list1[1:2]
list1$name

list1[[1]] [,1]
list1[1][,1]

#extract first element from list and extract 1st row from matrix
list1[[1]][2,]

#will throw an error
list1[1][1,]

list(mat1, "John",c(1,2,3,4))

#to access single element in list
list1$matrix_input
list1[[1]]

#to access multiple index
list1[c(1,2,3)]

#to add element in list
list1[[4]]<- list(fruits= c('Apple','Orange'), quantity= c(7, 6))
print(list1)



list1$another_list<-list(fruits= c('Apple','Orange'), quantity= c(7, 6))

#to delete element in list
list1$another_list<- NULL
list1

#to know number of elements in list
length(list1)

#############################################################################
#conditional statement

#if-else
#add one if even otherwise add 3
number=11
if(number%%2==0)
{
  number<- number+1
  print("if loop")
} else if(number>10) {
   number <- number+20
   print("if else")
}else{
  number<- number+3
  print("else loop")
}

print(number)


#################################################################################
#for loop
#create random training sample five times

number= 34
for(i in 1:5)
{
  print(number+i)
}

num1<-c(17, 12, 15, 16, 20)

for (i in length(num1))
{
  if(num1[i]%%2==0){
    num1[i]= num1[i]+1
  } else{
    num1[i]= num1[i]+3
  }
}



data("iris")
library(dplyr)

for (i in 1:3)
{
  print(paste0("Run", i))
  train_data<- sample_n(iris, 100)
  dim(train_data)
  print(mean(train_data$Petal.Width, na.rm=TRUE))
}

str(iris)

#print number of rows for each flower
for (flower in unique(iris$Species))
{
  sub_iris<- iris %>% filter(Species==flower)
  print(paste(flower," count is ", nrow(sub_iris)))
}

for (flower in unique(iris$Species))
{
  print(flower)
}


paste("Flower", 4 , sep= " ")

#################################################################
#function
#to count odd number from vector
oddcount<- function(x)
{

  odd_num<- length(x[x%%2!=0])

  return(odd_num)
}

vec1<- c(9, 7, 6, 4, 5, 3, 2)
oddcount(vec1)


#create function which will return addition, multiplication, subtraction, division of two numbers
#returing in list format as has to return multiple values
arith_fun<- function(x,y)
{
  addition<- x+y
  multiplication<- x*y
  subtraction<- x-y
  division<- x/y
  #arith_list<- list(addition,multiplication,subtraction,division)
  arith_list<- list(Addition=addition,Multiplication = multiplication,
                    Subtraction= subtraction,Division=division)
  return(arith_list)
}

arith_fun(10, 2)

arith_fun(x=c(10,12,7), y=c(2,6,7))

############################################################################
#Divide into train and test
data(mtcars)
train <- mtcars %>% sample_frac(.75)
#anti_join delete the data if present in other
test  <- anti_join(mtcars, train)

#row bind using dplyr
bind_rows(train,test)
library(dplyr)
#https://www.guru99.com/r-dplyr-tutorial.html
# Create a messy dataset
growth_data <- data.frame(
  country = c("A", "B", "C"),
  q1_2017 = c(0.03, 0.05, 0.01),
  q2_2017 = c(0.05, 0.07, 0.02),
  q3_2017 = c(0.04, 0.05, 0.01),
  q4_2017 = c(0.03, 0.02, 0.04))

print(growth_data)

#transpose columns to rows
#gather(data, key, value, na.rm = FALSE)
#Arguments:
#data: The data frame used to reshape the dataset
#key: Name of the new column created
#value: Select the columns used to fill the key column
library(tidyr)
colnames(growth_data)
cleaned_data<- gather(growth_data, "Time","Growth",
                      c("q1_2017", "q2_2017", "q3_2017" ,"q4_2017"))



gather(growth_data, "Time","Growth",c("q1_2017","q2_2017","q3_2017","q4_2017"))
print(cleaned_data)



#transpose rows to columns
#spread(data, key, value)
#arguments:
#data: The data frame used to reshape the dataset
#key: Column to reshape long to wide
#value: Rows used to fill the new column

spread(cleaned_data, "Time", "Growth")

#The separate() function splits a column into two according to a separator.
#separate(data, col, into, sep= "", remove = TRUE)
#arguments:
#data: The data frame used to reshape the dataset
#col: The column to split
#into: The name of the new variables
#sep: Indicates the symbol used that separates the variable, i.e.:  "-", "_", "&"
#remove: Remove the old column. By default sets to TRUE.

cleaned_data<-separate(cleaned_data, "Time",
                       c("Quarter","Year"),sep="_")
print(cleaned_data)

#function concanates two columns into one.
#unite(data, col, conc ,sep= "", remove = TRUE)
#arguments:
#data: The data frame used to reshape the dataset
#col: Name of the new column
#conc: Name of the columns to concatenate
#sep: Indicates the symbol used that unites the variable, i.e:  "-", "_", "&"
#remove: Remove the old columns. By default, sets to TRUE
unite(cleaned_data,"Time", c("Quarter","Year"),sep="-")

#Conversion of German characters to English
library(stringi)

x <- c("š", "ž", "ğ", "ß", "þ", "à", "á", "â", "ã", "ä", "å", "æ",
       "ç", "è", "é", "ê", "ë", "ì", "í", "î", "ï", "ð", "ñ", "ò",
       "ó", "ô", "õ", "ö", "ø", "œ", "ù", "ú", "û", "ü", "ý", "ÿ")
y <- stri_trans_general(x, "Latin-ASCII")

data.frame(x, y, stringsAsFactors = FALSE)

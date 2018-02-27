a=6 #1st way of assigning value
a
Print(a)# also simply write a to print its value
print(a)
b<-7 # 2nd way
8->c #3rd way
b->7
pi
letters
LETTERS
6+7
8-4
2*@
2*2  
34
3**4 # gives to the power
sqrt(81)
23/6
23%%6# gives remainder
23%/%6  # gives quotient

# == to check logic and = to assiging value to variables

ceiling(23.3) # three function to round off
floor(33.7)
round(23.3)

getwd() # to know working directory
setwd("D:/") # to set working directory
getwd()
save.image("var.RData") # to save Enviroment as image to remember the assigned variables
rm(list=ls()) # to remove list
load("var.RData") # to recall the saved enviroment image
x=3.72
class(x)
y=as.integer(x) # coverting to integer
class(y)
p= TRUE
class(p)
s = "TRUE"
class(s)
n = 'True'
class(n)
# unidirectional datasets - series of no. and charecters
# bidecrectional datasets - dataframe, matrix, table
#3dimentinal datasets - array
# vectors# - 1. it can take only one datatype, eighter numeric/character/integer etc
          # - 2. 'c' is used as combining operator which combines multiple arrguments into single varible.
          # 3. character take preceedence over numeric
          # 4. numeric take preceedence over logical

v3 = (3,7,11,15)
v3 = c(3,7,11,15)v1 = 23.4:43.4
v1
v2 = 23.4:43.1
v2
class(v1, V2)
class(v1)
class(v2)
v3
class(v3)
v4 = c(3,7,'11',15)
v4
class(v4)
v5 = c(3,7,11,15, TRUE)
v5
class (v5)
length(v3) # to find elements of vector
v6 = c(1,4,2,7,8,5,9,3,10,6)
v6
length(v6)
v6[5] # extract the specific position vector by putting the position in the big bracket []
v6[3:5]
v6[c(3,6)]
v6 [c(2:4, 8:10)]
v6[c(1, length(v6))] # extracting the last position vector if we not know the position of last number
v6[c(1, length(v6) - 1)]
v6[which(v6%%2==0)] # extracting the even no. with conditioning using which
v6[which((v6%%2==0) & (v6>5))]
v6[which((v6%%2==0) | (v6>5))]
v7= 1:6
v8 = 5:10


# merging - should have common element
v7 %in%v8 # first find out the common eelement with %in%
v8 %in% v7

union (v7,v8)# full merge without repeating th common element

intersect(v7,v8)# inner merge returns only the common elements

setdiff(v7,v8)#left outer merge returns only unique element of lefthand side data set
setdiff(v8,v7)


#sequence
a= seq(4,17,3) # 1st position no. give start limit, 2nd position no. is end limit, 3rd is incremental value
a=seq(17,4,-3)
a
a= seq(4, by=4, length=15) # start at 4 increment by 4 and give 15 nos.
a


# repeat -> rep( what needs to b repeatd, how many times to b repeated)
rep(2,6)

rep(6:9, 3:6) # set of repeated no. should b equal to times it hv to repeat
rep(6:9, c(2,1,5,3)) # repeat no. in particula sequence

rep(6:9, each=3, times=4) # each no. 3 times and full set 4 times

# Random numbers
runif(5) # give random no. between 0-1
round(runif(5)*10) # gives random no. with no decimal and whole no.

v6[round(runif(5)*10)] #extraxting the random element from v6 

set.seed(11)# fix randomness of variable in the R
v6[round(runif(5)*10)]
 
set.seed(11) # gives set of earlier no. plus 5 more random no.
v6[round(runif(10)*10)]

set.seed(10) # save new set of random no.
> v6[round(runif(5)*10)]
v = c(3,5,7,9, NA)
x= mean(v)
      x
y= median(v)
y

 # Missing value
is.na (v) # figure out missing value
!is.na(v) # ! denotes opposite/negation
d=v[!is.na(v)] # extracting the non missing value of some vector by subsetting it
mean(d)

  x= mean(v, na.rm = TRUE) # another way of removing NA and getting mean/median

  
  # FACTORS

  c= c('a','a','b', 'b', 'a', 'b')
c
class(c)
f= factor(c) # covert vector to factors
nlevels(f)  # no. of levels
levels(f)  # gives the levels in dataset


# BIDIRECTIONAL DATASET
# Dataframes - it can take multiple data type e.g numeric, character, factor etc

class(df)
View(df)
str(df) # structure of data frame
summary(df) # gives detial summary of data frame

# colnames
colnames(df) # gives the names of coloumns of data frame
colnames(df) = c("v", "w","x","y","z")  # change the name of col
df
colnames(df)[4] = "d" # change specific col name 
colnames(df)[c(2,5)] =c ("b", "e")
df

# binding in data frame - must have same no. of row or same no. of coloumn or both
#rowbind, colbind

cb= cbind(df,df,df) #column bind
cb

rb = rbind(df,df,df) # row binding
rb

#extraction of dataframe
rb[3,4] # extracting the 3rd row and 4th col element
rb[,3] #only col
rb[2,] #only row

rb$v # this also give all element of particular col by typing name of col after $

head(rb) # give top 6 rows
tail(rb) # gives bottom 6 rows

head(rb,3) # placing number after comma gives no. of rows we want to extract

rb[which(rb$x %%3==0),] # this code gives the entire row of those coloumns whr number is divisible by 3 with 0 remainder


# Merging Data frame

a = data.frame (a1 = c(1,2,25,18), a2 = c("a", "b", "c", "d"), data = 9:12, a4 = c(29,11,13,5))
b = data.frame(a1 = c (1,2,29,12,33,18), a3 = c (7,9,10,15,76,3))
a
b

# 4 types of data merges

merge (a,b, all = TRUE)# 1. full merge
 # r will by default merge in ascending order to merging column

merge(a,b, by.x= "a1", by.y = "a1", all = T) # if the colnames are different  or if we want to specify which column to merge using 'by.x' & 'by.y'
merge (b,a, all = TRUE)

merge (a,b)#2. inner merge - pickup allvalues of rows which hv common element
merge(b,a)

merge(a,b, all.x =TRUE) #3. left outer merge - pick up values from left dataframe & pick common value of right dataframe
merge(b,a, all.x = TRUE)

merge(a,b, all.y =TRUE) #4. right outer merge - pick up values from right dataframe & pick common value of left dataframe
merge(b,a, all.y = TRUE)


# MATRIX
    # Matrix will only have one type of data
    # Matrix - can b created multiple ways
m1 = matrix(1:25, nrow = 13)
m1
m2 = matrix(1:25, nrow = 13, ncol = 20)
m2
m3 = matrix(1:25, nrow = 13, ncol = 20, byrow = T)
m3

a= c(4,7,5,12,15)
b= c(3,8,2,13,18)
c= c(5,8,11,"9",22) # have one character element
d= c(8,4,7,17,11)
e= c(7,3,9,10,16)

df= data.frame(a,b,c,d,e) # create data frame
df
mx=t(df)  # transpose data frame to matrix
mx 
class(mx)
  my = as.data.frame(mx) # convert matrix to data frame
my  
class(my)

# 3D DATA SET
x = c(2,5,4,7,8)
y = c(3,6,4,8,9,12,4,17,2,14)
 
# ARRAY - collection of Matricies
a1 = array(c(x,y), dim = c(4,6,3)) # it will give 4 by 6, 3 different matrix 
a1

# extraction of matrix
a1[3,2,3] # arrayname[row, col, level of matrx]



x = c(2,5,4,7,8)
y = c(3,6,4,8,'9',12,4,17,2,14) # change one in character

# ARRAY - collection of Matricies
a1 = array(c(x,y), dim = c(4,6,3)) # it will give 4 by 6, 3 different matrix 
a1


#LIST - it can take multiple data type , also multiple data sets

v1 = c(3,5,4,6,8) # create numeric vector
vc= c ("a", "b", "c", "d")# create character vector
f = factor(1:4) #create factor
m1 = matrix (1:20, nrow = 5, ncol= 4) #create matrix

L1= list(v1,vc,f,m1) # create a list form above


#extract element from list
L1[[2]][2]  # first will be the level in double brac"[[]]" followed by the way of extracting element from that data set

L1[[4]][3,4] # extract from matrx

# list with in a list
L2 = list(v1,vc,L1)
L2

L2[[3]][[4]][1,3] # extracting from L2 1st row, 3 col element from matrix

# Conditions & LOOping
a= 9
b= 8

if(b>5){
  print("QUALIFY")
}

a= 9
b= 8

if(b<5){
  print("QUALIFY")
}
  a= 9
  b= 8
  
  if(a>b){
    print("QUALIFY")
  }else {
    print("NOT QUALIFY")
  }

  if(a<b){
    print("QUALIFY")
  }else {
    print("NOT QUALIFY")
  }
  
  
  ifelse(a<b, "QUALIFY", "NOT QUALIFY" ) # other way of writing 'ifelse' condition
  ifelse(a<b, print("QUALIFY"), print( "NOT QUALIFY") ) # other way of writing 'ifelse' condition

  
  # LOOP STATEMENT
  
  v1<- c("Hello", "while loop")
  count <- 2
  while(count <=7){
    print(v1)
    count = count +1
  }
  
  v2<- c("New", "Function")
  count <- 2
  repeat {
    print(v2)
    count<- count + 1
    if (count>5){
      break
    }
  }
  
  
  
  
  v3<- c("New", "Function")
  count <- 2
  repeat {
    print(v3)
    if (count>5){
      break
    }
    count<- count + 1
  }
  
  
  # assigning the value inside the statement with "for ..in .." function
  
  for(i in c(1:5)){   # assignnig c(1:5) to i 
    print(i)
  }
  
  for (i in seq(0,20,2)){ 
    print(i)
  }
  
  for (i in seq(1,10,2)) { 
    if(i %%2 ==0){
    print(i)
    }
  }
  
  for (i in seq(1,10,2)) { 
    if(i %%3 ==0){
      print(i)
    }
  }
  
  for (i in seq(0,30,3)) { 
    if(i %% 2 ==0){
      print(i)
    }
    if(i>=10){
      break
    }
  }
  
  
  for (i in seq(0,30,3)) { 
    if(i %% 2 ==0){
      if(i>=10){
        break
      }else{
        print(i) }
    }
  }
  
#IMPORT/EXPORT DATA
  #library is comand for activating any package
  library(csvread)
  getwd()
#Importing csv file
  a= read.csv("C:/Users/drhum/Documents/R Prerequisites/NewFile.csv")  
View(a)
a= read.csv(file.choose()) #another way of importing the csv files.

#Exporting csv file

write.csv(a, "new1.csv",row.names = FALSE)  #row.names negate the additionam row no. col from newly created data frame.
b= read.csv(file.choose())
View(b)


#TEXT FILE IMPORT
tx = read.table("C:/Users/drhum/Desktop/1w.txt")# gives error

tx = read.table("C:/Users/drhum/Desktop/1w.txt", header = F, fill = T) # will not take 1st line as header & fill empty space
View(tx)

library(xlsx)
a= read.xlsx(file="C:/Users/drhum/Documents/R Prerequisites/NewExcel.xlsx",1)
write.xlsx(a,file = "aexcel")

#PRACTISE HELP

library(help = "datasets")

write.csv(Titanic, "titanic.csv", row.names = F)
s=read.csv("C:/Users/drhum/Documents/titanic.csv")
View(s)

#PLOTTINGG GRAPH

w = c(3,6,4,7,8,2,6,9)
w
barplot(w)
barplot(w, main = "plot", xlab="X", ylab= "Y", border = NA )
palette()
barplot(w, main = "plot", xlab="X", ylab= "Y", border = "black", col=2:4 )

barplot(w, main = "plot", xlab="X", ylab= "Y", border = "black", col= rainbow(8) )

barplot(w, main = "plot", xlab="X", ylab= "Y", border = "black", col= heat.colors(8) )

barplot(w, main = "plot", xlab="X", ylab= "Y", border = "black", col= terrain.colors(8) )

barplot(w, main = "plot", xlab="X", ylab= "Y", border = "black", col= topo.colors(8) )

barplot(w, main = "plot", xlab="X", ylab= "Y", border = "black", col= cm.colors(8) )

barplot(w, main = "plot", xlab="X", ylab= "Y", border = "black", col= grey.colors(8) )

library(RColorBrewer)
display.brewer.all()
display.brewer.pal(5,"Spectral")
display.brewer.pal(5,"Set1")
display.brewer.pal(5,"Blues")

barplot(w, main = "plot", xlab="X", ylab= "Y", border = "black", col= brewer.pal(8,"Spectral") )


# Learning-R-language
This directory has the objective of demonstrating the syntax and some functionalities using the R language, as well as data analysis experiments performed with R.

# Which is?
The R language that is widely used by mathematicians and statisticians is a language and also an integrated environment for data analysis purposes, from the ETL process to the development of analytical graphs.

# Advantages
1. Popularity;
2. Open source;
3. Ease of learning;
4. Ease of programming;
5. Support for machine learning;
6. Integrates with several languages, such as: Java, Python, etc;
7. Graphics quality.


# Coments
> #My coment

# Hello world
> print("Hello world!")

# Calculator
It can be easily used as a calculator, for example:
#Calculation: ten plus two times 20, minus two raised to two.
>10+(2*20)-(2^3) 
Result: 42

# Install new packagues
> install.packages("package_name")
#Install new packages to work with XML:
> install.packages("XML")

# Native Functions
R has several native functions, some are:
-> sqrt (): used to extract the square root of the number you receive as a parameter;
-> sin (): used to extract the sine of the number that it receives as parameter;
-> cos (): used to extract the cosine from the number it receives as a parameter;
-> prod (): used to extract the product from the number it receives as a parameter;
-> abs (): used to extract the absolute value of the number that is received as a parameter;
-> log (): used to extract the log of the number that is received as a parameter;

-> c (): used to concatenate objects;
-> print (): used to display the element passed by parameter;

-> sum (): used to sum the value (s) it receives as a parameter;
-> mean (): used to calculate the average of the values it receives as a parameter, as a vector of numbers for example;
-> min (): used to return the smallest value in a list of numbers;
-> max (): used to return the largest value in a list of numbers;
-> sort(): used to sort a list of numbers;

The full list of language functions is available at: https://stat.ethz.ch/R-manual/R-devel/library/base/html/00Index.html

# Random Numbers
To select 1 random number from 1 to 10:
> sample (1:10, 1) # The first parameter indicates the interval, the second indicates when numbers are to be selected
Result: 9

# Vector
Working with vectors in R is very simple, to create a vector:
> ages <-c (23,50,35,28)
To construct a vector with data entered manually by the user at each position:
> ages <-scan () #In the last position the user must leave blank and press enter
To display the vector:
> print (ages)
To access a position the vector:
> print (ages [1]) # holds the first position of the vector
Result: 23
> print (ages [1: 4]) # from the first to the fourth position of the vector
Result: 28
To display the vector length:
> print (length)
Result: 4
To change a vector position:
> ages [1] <- 20 # so that the first element of the vector that was previously 23 is now 20
To remove a position from the vector:
> ages [-2] #remove the second element of the vector

# Matriz

Suppose we have two vectors called v1 and v2:
> v1 <-c (10,35,63,1)
(20,12,90,76)

To arrange 2 vectors in an array, concatenating in rows:
> my_matrix <-rbind (v1, v2)
Result:
   [, 1] [, 2] [, 3] [, 4]
v1 10 35 63 1
v2 20 12 90 76
To arrange 2 vectors in an array by concatenating columns:
> my_matrix <-cbind (v1, v2)
Result:
     v1 v2
[1,] 10 20
[2,] 35 12
[3,] 63 90
[4,] 17

To display the size of an array:
> dim (my_matrix) #Returns the number of rows and columns
Result:
2 4 # 2 rows and 4 columns, whereas the array was created with rbind

Continue...











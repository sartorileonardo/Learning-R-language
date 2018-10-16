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
> 10+(2*20)-(2^3) 

Result: 42

# Install new packagues
> install.packages("package_name")

Install new packages to work with XML:

> install.packages("XML")

# Native Functions
R has several native functions, some are:
- sqrt (): used to extract the square root of the number you receive as a parameter;
- sin (): used to extract the sine of the number that it receives as parameter;
- cos (): used to extract the cosine from the number it receives as a parameter;
- prod (): used to extract the product from the number it receives as a parameter;
- abs (): used to extract the absolute value of the number that is received as a parameter;
- log (): used to extract the log of the number that is received as a parameter;
- c (): used to concatenate objects;
- print (): used to display the element passed by parameter;
- sum (): used to sum the value (s) it receives as a parameter;
- mean (): used to calculate the average of the values it receives as a parameter, as a vector of numbers for example;
- min (): used to return the smallest value in a list of numbers;
- max (): used to return the largest value in a list of numbers;
- sort(): used to sort a list of numbers.

The full list of language functions is available at: https://stat.ethz.ch/R-manual/R-devel/library/base/html/00Index.html

# Help
For help on some standard library or function, simply use the "?" before the function, example:
> ?sort()

Result:
Description
Sort (or order) a vector or factor (partially) into ascending or descending order. For ordering along more than one variable, e.g., for sorting data frames, see order.
[...].

# Random Numbers
To select 1 random number from 1 to 10:
> sample (1:10, 1)
The first parameter indicates the interval, the second indicates when numbers are to be selected
Result: 9

# Vector
Working with vectors in R is very simple, to create a vector:
> ages <- c(23,50,35,28)

To construct a vector with data entered manually by the user at each position:
> ages <- scan() #In the last position the user must leave blank and press enterTo add value of all vector position:
> age + 10

To display the vector:
> print(ages)

To display the vector of increasing form:
> sort(ages)

To display the vector of decreasing form:
> sort(ages, decreasing = TRUE)

To access a position the vector:
> print(ages[1]) # holds the first position of the vector
Result: 23

> print(ages[1:4]) # from the first to the fourth position of the vector
Result: 28

To display the vector length:
> print(length)
Result: 4

To change a vector position:
> ages[1] <- 20 # so that the first element of the vector that was previously 23 is now 20

To remove a position from the vector:
> ages[-2] #remove the second element of the vector

# Matriz

Suppose we have two vectors called v1 and v2:
> v1 <- c(10,35,63,1)
> v2 <- c(20,12,90,76)

To arrange 2 vectors in an array, concatenating in rows:
> my_matrix <-rbind(v1, v2)
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
> dim(my_matrix) #Returns the number of rows and columns
Result:
2 4 # 2 rows and 4 columns, whereas the array was created with rbind

To create an array that contains only zero numbers with 2 rows and 3 columns:
> matrix(0,2,3)
Result:
     [,1] [,2] [,3]
[1,]    0    0    0
[2,]    0    0    0

To display the element of row 2 and column 3:
> print(matrix[2,3])

To display only matrix rows:
> print(rcol(matrix))

To display only the columns in the matrix:
> print(ncol(matrix))

To change a matrix element:
> matrix[1,3] <- 90 #alters the element of row 1 and column 3

To change the entire row of the array and all its columns
> matrix [2,] <- 10 #alter to 10 the whole line 2

To remove all elements of row 2 from the array:
> matrix [-2,]

To remove all elements from column 2 of the array:
> matrix [, - 2]

# Operation with Matrix
To add 4 in all the elentos of an array:
> matrix + 4

To multiply all the elements of a matrix by 2:
> matrix * 2

To add 2 arrays "m1" and "m2" with the same number of rows and columns:
> m1 + m2

To obtain the product of 2 matrices "m1" and "m2":
> m1% *% m2

To calculate the determinant of a matrix:
> det(matrix)

To calculate the diagonal of a matrix:
> diag(matrix)

To convert a matrix into transpose (invert rows and columns):
> t(matrix)

To convert an array to image pixels:
> image(matrix)

We can perform a test with the complete data matrix installed by default called "Volcano", this matrix contains # dummy data about a volcano
> image(Volcano)
Result:
![image_volcano](https://user-images.githubusercontent.com/7613528/47015844-7d89a280-d124-11e8-877a-cd9cf1987471.PNG)

To visualize the contour and relief data, we use:
> contour(Volcano)
Result:
![countour_volcano](https://user-images.githubusercontent.com/7613528/47015902-a4e06f80-d124-11e8-8505-ec69cc42e9e1.PNG)

To visualize the perspective in 3D, we use:
> persp(matrix)
Result:
![persp_volcano](https://user-images.githubusercontent.com/7613528/47015981-d5c0a480-d124-11e8-990f-dad92ac643a3.PNG)

# Array
Set of elements of the same type and dimension, their manipulation is very similar to vectors.


# Lista
Set of elements of different types and dimensions, their manipulation is very similar to vectors.

# Data Frame
Dataframe is a data structure similar to a worksheet.

To create a dataframe:
> expenses <- data.frame(
   rent = c("João", "Maria","Pedro"), 
   transport = c(152, 171.5, 165), 
   light = c(81,93, 78),
   internet = c(42,38,26),
   water = c(42,38,26)
)
> print(expenses)

Result:
  rent transporte light internet water
1    João      152.0  81       42   42
2   Maria      171.5  93       38   38
3   Pedro      165.0  78       26   26

To display the structure of a dataframe:
> str(dataframe)

To display the first line of a dataframe:
> dataframe[1,]

To display the first column of a dataframe:
> dataframe[,1]

To alter the variable "rent" of dataframe "expenses":
> expenses$rent <- c(200,300,400)

#Pizza Pie
To create a graph, use the native function pie().
To show a sample developed, acess the file in this directory: 
<a href="https://github.com/leonardogt4/Learning-R-language/blob/master/PiePizzaExpenses.R">![pie_pizza_expenses](https://user-images.githubusercontent.com/7613528/47034327-71660b00-d14d-11e8-87b5-1a3085fa33ca.PNG)</a>
The code of this pie pizza is available in file: https://github.com/leonardogt4/Learning-R-language/blob/master/PiePizzaExpenses.R



















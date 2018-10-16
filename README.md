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

# Help
For help on some standard library or function, simply use the "?" before the function, example:
> ?sort()
Result:
Description
Sort (or order) a vector or factor (partially) into ascending or descending order. For ordering along more than one variable, e.g., for sorting data frames, see order.
[...].

# Random Numbers
To select 1 random number from 1 to 10:
> sample (1:10, 1) # The first parameter indicates the interval, the second indicates when numbers are to be selected
Result: 9

# Vector
Working with vectors in R is very simple, to create a vector:
> ages <- c(23,50,35,28)
To construct a vector with data entered manually by the user at each position:
> ages <- scan() #In the last position the user must leave blank and press enter
To add value of all vector position:
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

Para alterar a linha inteira da matriz e todas as suas colunas
> matrix[2,] <- 10 #altera para 10 toda a linha 2

Para remover todos elementos da linha 2 da matriz:
> matrix[-2,]

Para remover todos elementos da coluna 2 da matriz:
> matrix[,-2]

# Operation with Matrix
Para add 4 em todos os elentos de uma matriz:
> matrix + 4

Para multiplicar todos os elementos de uma matrix por 2:
> matrix * 2

Para somar 2 matrizes "m1" e "m2" com o mesmo número de linhas e colunas:
> m1 + m2

Para obter o produto de 2 matrizes "m1" e "m2":
> m1%*%m2

Para calcular o determinante de uma matrix:
> det(matrix)

Para calcular a diagonal de uma matrix:
> diag(matrix)

Para converter uma matrix em transposta (inverter linhas e colunas):
> t(matrix)

Para converter uma matriz em pixels de imagem:
> image(matrix)
#Podemos realizar um teste com a matriz de dados completa instalada por padrão chamada "Volcano", essa matrix contém dados #fictício sobre um vulcão
> image(Volcano)
Result:

Para visualizarmos os dados de contorno e relevo, utilizamos:
> contour(Volcano)
Result:

Para visualizarmos em 3D a perspectiva, utilizamos:
> persp(Volcano)
Result:

Continue...















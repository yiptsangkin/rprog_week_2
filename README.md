This is the program assignment about R program in coursera.

after source the file named cachematrix.R #use this sentence in R : source("yourpath/cachematrix.R")

then you can use the function called makeCacheMatrix

1、At fisrt, you can use makeCacheMatrix() function to load some functions for deal with  inverse matrix

2、Secondly, use cacheSolve() to get the inverse matrix in the cache or not, there are two variables for this function, "x" is 
the matrix which one you want to get the inverse matrix, and the b is the functions for deal with "x".

3、Thirdly, if the inverse matrix has in the cache, you can see the message like this——"getting cached data...",if not, the 
function  called setsolve() in "b" will set the inverse matrix after calculating to the cache. Next time you want to get the 
same matrix's inverse matrix, you can get it in cache directly.

Thanks to who assess my homework!

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function gets an input as a matrix, sets the value, then gets it, to set the inverse of that same matrix. 
## The matrix object can cache its own object.

makeCacheMatrix <- function(x = matrix()) {              ##takes input
        InverseM <- NULL                                
        set <- function(y) {                             ##sets value of matrix
                x <<- y
        InverseM <<- NULL
}
get <- function() x                                      ## gets value of matrix
        
        setInverseM <- function(inverse) InverseM <<- inverse              ##sets value of inverse matrix
        getInverseM <- function() InverseM                                 ##gets value of inverse matrix
        
        list( set = set, get = get, setInverseM = setInverseM, getInverseM = getInverseM)
}        

## Write a short comment describing this function
##This function takes the output of the makeCacheMatrix function as an input and checks its inverse to see if it has any values or not
##In case inverse matrixis empty, it gets the original matrix data and set the inverse matrix by using the solve function.
## If the inverse matrix has values in it, it returns a message  "Getting Cached Invertible Matrix" and the cached object

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        InverseM <- x$getInverseM()
        if (!is.null(InverseM)) {
                message("getting catched data")            ##return message
                return(InverseM)                           ##return inverse matrix
                }
        z <- x$get()
        InverseM <- solve(z, ...)                         ##get the original Matrix Data 
  invMatrix <- solve(MatrixData, ...)                     ##use solve function to inverse the matrix
        x$setInverseM(InverseM)                           ##set inverse matrix                   
        return(InverseM)
}

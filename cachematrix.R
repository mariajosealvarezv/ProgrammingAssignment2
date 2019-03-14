## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        InverseM <- NULL                        
        set <- function(y) {
                x <<- y
        InverseM <<- NULL
}
get <- function() x
        
        setInverseM <- function(inverse) InverseM <<- inverse
        getInverseM <- function() InverseM
        
        list( set = set, get = get, setInvserseM = setInverseM, getInverseM = getInverseM)
}        

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        InverseM <- x$getInverseM()
        if (!is.null(InverseM)) {
                message("getting catched data")
                return(InverseM)
                }
        z <- x$get()
        InverseM <- solve(z, ...)
        x$setInverseM(InverseM)
        InverseM
}

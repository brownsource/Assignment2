## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
################################################################################
# This function creates a matrix object that can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
    
    m <- NULL
    
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    get <- function() x
    
    set.Inverse <- function(inverse) m <<- inverse
    
    get.Inverse <- function() m
    
    list(set = set,
         get = get,
         set.Inverse = set.Inverse,
         get.Inverse = get.Inverse)
}


## Write a short comment describing this function
################################################################################
# This function computes the inverse of the special "matrix" returned by 
# makeCacheMatrix above. If the inverse has already been calculated (and the 
# matrix has not changed), then the cachesolve should retrieve the inverse from 
# the cache. It assumes that the matrix supplied is always invertible.

cacheSolve <- function(x, ...) {
    
    m <- x$get.Inverse()
    
    if(!is.null(m)){
        message("Getting cached data")
        return(m)
    }
    
    data <- x$get()
    m <- solve(data, ...)
    x$set.Inverse(m)
    m
}



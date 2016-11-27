## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
################################################################################
# This function creates a matrix object that can cache its inverse.
#
# args:
# 
# 
#
# retuns:

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}


## Write a short comment describing this function
################################################################################
# This function computes the inverse of the special "matrix" returned by 
# makeCacheMatrix above. If the inverse has already been calculated (and the 
# matrix has not changed), then the cachesolve should retrieve the inverse from 
# the cache. It assumes that the matrix supplied is always invertible.
#
# args:
# 
# 
#
# retuns:




cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}



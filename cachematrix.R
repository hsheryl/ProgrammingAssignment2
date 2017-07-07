## Put comments here that give an overall description of what your
## functions do

## This function creates four functions for use with the two defined variables

makeCacheMatrix <- function(x = matrix()) {
     im <- NULL
     set <- function(y) {
          x <<- y
          im <<- NULL
     }
     get <- function() x
     setsoln <- function(solve) im <<- solve
     getsoln <- function() im
     list(set = set, get = get,
          setsoln = setsoln,
          getsoln = getsoln)
}


## Calculates the inverse and stores it in im if im is NULL, returns im if im is not NULL

cacheSolve <- function(x, ...) {
     im <- x$getsoln()
     if(!is.null(im)) {
          message("getting cached data")
          return(im)
     }
     data <- x$get()
     im <- solve(data, ...)
     x$setsoln(im)
     im
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#this is defineed to set a value to the matrix and c
#inverse from the cache	
	i <- NULL
  set <- function(y) {
    
    x <<- y   # setting the value
    i <<- NULL  # clear the cache
    
  }
  
  get <- function() x
# Define function to set the inverse. This is only used by getinverse() when
# there is no cached inverse
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	  i <- x$getInverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat, ...)
  x$setInverse(i)
  i
}

## Put comments here that give an overall description of what your
## functions do

## this function will cache inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL
  set <- function(y) {
    x <<- y
    invr <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invr <<- inverse
  getinverse <- function() invr
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


# this function first checks if inverse available and then computes
# if available skips the computation
# if not then make a cached copy 

cacheSolve <- function(x, ...) {
  invr <- x$getinverse()
  if(!is.null(invr)) {
    message("getting cached data.")
    return(invr)
  }
  data <- x$get()
  invr <- solve(data)
  x$setinverse(invr)
  invr      
  ## Return a matrix that is the inverse of 'x'
    
}

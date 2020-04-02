## Put comments here that give an overall description of what your
## functions do

## the function makeCacheMatrix creates a special matrix.
## the matrix can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
         x <<- y
         inv <<- NULL
  }
  get <- function()x
  setinv <- funcion(inverse)inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, 
       setinv = setinv, 
       getinv = getinv)
}


## the function cachesolve compute the inverse of the special matrix created
## with the above function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inv <- x$getinv()
         if(!is.null(inv)){
                 message("getting cached data")
                 return(inv)
         }
         data <- x$get()
         inv <- solve(data, ...)
         x$setinv(inv)
         inv
}

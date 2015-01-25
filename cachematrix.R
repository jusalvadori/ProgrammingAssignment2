## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( x = matrix() ) {
  m <- NULL
  # function to initialize values
  set <- function( y = matrix() ) {
    x <<- y
    m <<- NULL
  }  
  # function to return the matrix x
  get <- function() x
  # function to store de value of inverse of the matrix x
  setInverse <- function( mInverse ) m <<- mInverse
  # function to return inverse of the matrix x
  getInverse <- function() m
  # list of functions
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)  
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse()

  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
  
}

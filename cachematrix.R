## Here are two functions called makeCacheMatrix and cacheSolve. 
## The first one is used to create a object to cache inverse of matrix. 
## The second one is used to calculate the inverse the matrix.

## This function is used to create a special object to cache the inverse of matrix which is m.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setinverse <- function(inverse) m <<- inverse
  m
}

## This function is used to calculate the inverse of matrix. 
## First, it will check whether the inverse already exists. If so, just get cached data.
## If not, it will use solve function to calculate the inverse and cache it to m.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- makeCacheMatrix(x)
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  m <- solve(x, ...)
  m
}

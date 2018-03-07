## Here are two functions called makeCacheMatrix and cacheSolve. 
## The first one is used to create a object to cache inverse of matrix. 
## The second one is used to calculate the inverse the matrix.

## This function is used to create a special object to cache the inverse of matrix which is inv.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function is used to calculate the inverse of matrix. 
## First, it will check whether the inverse already exists. If so, just get cached data.
## If not, it will use solve function to calculate the inverse and cache it to inv.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  inv
}

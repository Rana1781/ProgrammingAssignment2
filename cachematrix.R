## Put comments here that give an overall description of what your
## functions do

## first one for calculating the inverse and caching the result
## second one checks whether the inverse should be calculated or 
## it must be taken from the cache matrix with a if statement

## Write a short comment describing this function
## makeCacheMatri function cache the inverse of a given matrix.


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,setmean = setmean,
       getinverse = getinverse)

}


## Write a short comment describing this function

## the funtion actually takes a matrix and returns the inverse of it or 
## if it is already calculated then just returns it from calling a function
## of "makeCacheMatrix"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- inverse(data, ...)
  x$setinverse(m)
  m
        
}

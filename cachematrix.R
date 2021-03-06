## Denica Baeva R Programming Coursera Assignment Jan 2018

## This function creates a special "matrix" 
## object that can cache its inverse using solve cacheSolve function below
## assumes matrix has an inverse
## to call cache the set inverse use it with the c
makeCacheMatrix<-function(x = matrix())
{
  s <- NULL
  set <- function(n)
  {
    x<<- n
    s<<- NULL
  }
  get <- function() x
  setinverse <- function(solve) s<<- solve
  getinverse <- function() s
  list(set = set, get = get,
       setinverse=setinverse,getinverse=getinverse)
  
}

## This function computes the inverse of the special
## "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated 
## (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse 
## from the cache

cacheSolve<-function(x,...){
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m ##return this if not cached
}

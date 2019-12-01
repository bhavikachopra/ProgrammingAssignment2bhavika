##Submission for peer-graded assignment
##First creating the matrix object that can cache its inverse
makeCacheMatrix <- function( x = matrix()){ 
  k <- NULL
  set <- function(y){
    x <<- y
    k <<- NULL
  } 
 get <- function() x
   setInverse <- function(inverse) k <<-inverse
  getInverse <- function () k
  list( set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}
##This is to retrieve the inverse from the cache
cacheSolve <- function(x, ...) {
  ##This is to return the matrix that is the inverse of matrix 'x'
  k <- x$getInverse()
  if ( !is.null(j) ){ message("get cached data")
    return(k)
  }
  mat <- x$get()
  k <- solve(mat, ...)
  x$setInverse(k)
  k
}
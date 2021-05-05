## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        j <- NULL                   # initializing inverse as NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x               # function to get matrix x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          j <- x$getInverse()
  if(!is.null(j)){                   # checking whether inverse is nULL
  message("getting cached data")
  return(j)                            # return thr inverse value
  }
  mat <- x$get()
  j <- solve(mat,...)                #calculate the inverse value
  x$setInverse(j)
  j
}

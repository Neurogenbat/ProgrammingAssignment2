##Peer reviewed programming assignment for the course R programming as part of the 
##data science specialisation on Coursera

##Date: 14-09-2020

##Author: Janine

##github: Neurogenbat

##I will now write a function that creates a matrix that can cache its inverse

makeChacheMatrix <- fubction(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

##I have defined the argument as "matrix", the initialisation as NULL holds the inverse
##I have assigned the values of inv in the parent einvironment
##I can return matrix value with get
##I can get the value of inv with getInverse


##now I will write a function that generates the inverse of the matrix makeChacheMaktrix

cacheSolve <- function(x, ...){
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("get cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}

##cacheSolve returns a matrix as invers of x
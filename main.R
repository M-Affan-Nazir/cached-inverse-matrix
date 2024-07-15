makeCacheMatrix <- function(x=numeric()){
  inverse <- NULL
  changed <- FALSE
  set <- function(y) {
    x <<- y  #x exists in parent environment, therefore '<<-' used
    changed <<- TRUE
    inverse <<- NULL
  }
  get <- function() return(x)
  
  cacheSolve <- function() {    #Calculate Inverse
    if (!is.null(inverse) && !changed) {  # Return cached inverse if valid
      message("Returning cached inverse.")
      return(inverse)
    } 
      if (det(x) == 0) {
        print("Matrix is singular and cannot be inverted.")
      }
      inverse <<- solve(x)
      changed <<- FALSE
      return(inverse)
  }
  
  getInverse <- function() return(inverse)
  list(set = set, get = get, cacheSolve = cacheSolve, getInverse = getInverse)
}


#Example Usage:
m <- makeCacheMatrix()
m$set(matrix(rnorm(25),5,5))
x <- m$cacheSolve()
#Main Matrix:
print(m$get())
#Inverse of Matrix
print(m$getInverse())
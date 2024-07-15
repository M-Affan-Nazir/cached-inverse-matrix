makeMatrix <- function(x=numeric()){
  inverse <- NULL
  set <- function(y) {
    x <<- y  #x exists in parent environment, therefore '<<-' used
  }
  get <- function() return(x)
  setInverse <- function(inv) { inverse <<- inv } #inverse outside scope of function 'setInverse'; therefore <<- used
  getInverse <- function() return(inverse)
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
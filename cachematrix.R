# Proyecto 2
makeCacheMatrix <- function( m = matrix() ) {
  i <- NULL
  
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  } # Set(matriz) me devuelve una variable m y i 
  
  get <- function() {
    m
  } # Get() muestra m

  setInverse <- function(inverse) {
    i <<- inverse
  } # setinverse(inverse) le da a i el valor inverse
  
  getInverse <- function() {
    i
  } # getinverse()Muestra I

  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}







cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  data <- x$get()
  m <- solve(data) %*% data
  x$setInverse(m)
  m
}
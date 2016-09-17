## Assignment for Coursera Course

##These functions are very similar the encapsulation
##for Object Oriented Programming (like Java, C#, etc)

makeCacheMatrix <- function(mtx = matrix()) {
  sol <- NULL
  #Declare setters and getters functions
  setMtx <- function(y) {
    mtx <<- y
    sol <<- NULL
  }
  getMtx   <- function() { mtx }
  setSolve <- function(solve) { sol <<- solve }
  getSolve <- function() { sol }
  list(
      setMtx   = setMtx,
      getMtx   = getMtx,
      setSolve = setSolve,
      getSolve = getSolve
  )
}



cacheSolve <- function(x, ...) {
  s <- x$getSolve()
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$getMtx()
  s <- solve(data, ...)
  x$setSolve(s)
  s
}


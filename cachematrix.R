## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
		inv <- NULL
		get <- function() x
		setinv <- function(inverse) inv <<- inverse
		getinv <0 function() inv
		list(get = get,
			 setinv = setinv,
			 getinv = getinv)

}


## Returns inverse of the matrix x

cacheSolve <- function(x, ...) {

		inverse <- x$get
		if(!is.null(inverse)){
			 message("getting cached data")
			 return(inverse)
		}
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinv(inverse)
        inverse
}

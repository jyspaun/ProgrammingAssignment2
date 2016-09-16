## Put comments here that give an overall description of what your
## functions do Cache a matrix and return an inverse

## Write a short comment describing this function
## Cache a matrix
makeCacheMatrix <- function(x = matrix()) {
        inv <-  NULL
        set <- function(y){
                x<<- y
                inv <<- NULL
        }
        
        get <- funxtion() x
        setInv <- function(inverse) inv <<- inverse
        getInv <- fucntion() inv
        list(set = set, get = get,
                setInv = setInv,
                getInv = getInv)
}


## Write a short comment describing this function
## Return the Inverse matrix
cacheSolve <- function(x, ...) {
        inv <- x$getInv()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setInv(inv)
        inv
        
        ## Return a matrix that is the inverse of 'x'
}

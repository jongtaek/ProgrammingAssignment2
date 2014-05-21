## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        
        ## set the value of the matrix
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        ## get the value of the matrix
        get <- function() x
        
        ## set the value of the inverse matrix
        setinverse <- function(sovle) m <<- solve
        
        ## get the value of the inverse matrix
        getinverse <- function() m
        
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cache inverse matrix")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}

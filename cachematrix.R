## The following codes are used for 
## Caching the Inverse of a Matrix

## Creating a list of functions that
## can cache the inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {
        c <- NULL
        set <- function(y) {
                x <<- y
                c <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) c <<-inverse
        getInverse <- function() c
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
        
        
}


## Computes the inverse of the matrix returned
## by makeCacheMatrix(), unless the inverse has
## already been calculated, in which case
## it retrieves it from the cache.

cacheSolve <- function(x, ...) {
        c <- x$getInverse()
        if ( ! is.null(c)) {
                print("getting cached data")
                return(c)
        }
        c <- solve(x$get())
        x$setInverse(c)
        c
        
}

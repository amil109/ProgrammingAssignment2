## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(newmatrix){
        x <<- newmatrix
        inv <<- NULL
    }
    get <- function(){
        return(x)
    }
    setsolve <- function(solve){
        inv <<- solve
    }
    getsolve <- function(){
        return(inv)
    }
    list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getsolve()
    if(!is.null(inv)){
        message("Retrieving cached data...")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setsolve(inv)
    return(inv)
}

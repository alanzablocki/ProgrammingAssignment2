## Two functions that will invert a matrix and cache the matrix inverse

makeCacheMatrix <- function(x = matrix()) {

    # We proceed as in the example - I prefer including { } for functions

    # initialization of a matrix

    m <- NULL

    set <- function(y) {
            x <<- y
            m <<- NULL
    }

    # get the matrix
        
    get <- function() {
        x
    }

    # perform some operation on matrix - here inverse

    # set the inverse
    
    setInv <- function(inverse) {
        m <<- inverse
    }

    # get the inverse

    getInv <- function() {
        m
    }
    
    # list of methods 

    list(set = set, get = get,
         setInv = setInv,
         getInv = getInv)
}


## Checks to see if inverse matrix exists if so get's cached version

cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'

    m <- x$getInv()

    ## return matrix inverse if already set

    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }

    data <- x$get()
    m <- solve(data)
    x$setInv(m)
    m
}

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    invMat <- NULL;
    setMat <- function(y){
        x <<- y;
        invMat <<- NULL;
    }
    
    getMat <- function() {x}
    setInverseMat <- function(inverseMat) invMat <<- inverseMat;
    getInverseMat <- function() invMat;
    list(setMat=setMat, getMat=getMat, setInverseMat=setInverseMat, getInverseMat=getInverseMat)
}


## Write a short comment describing this function
# Use solve function to get the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     temInv <- x$getInverseMat();
     
     if(!is.null(temInv)) {
        message("getting cached data.")
        return(temInv);
     }
    mat <- x$getMat()
    invMat <- solve(mat)
    x$setInverseMat(invMat)
    x$getInverseMat()
}

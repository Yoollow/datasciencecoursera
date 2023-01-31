## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Function to build a matrix object with several components
makeCacheMatrix <- function(x = matrix()) {
  
  inverse<-NULL
  #function to set the matrix from external environment
  set<-function(y){
    x<<-y
    
  }
  #function to get the matrix
  get<-function() x
  #function to set the inverse
  setinv<-function(invertedx) inverse<- invertedx
  #function to get the inverse
  getinv<-function() inverse
  #a list of the components of this function
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}
##function to get cached inverse from the special matrix
##or compute it if it is not there
cacheSolve<- function(x = matrix()){
  inverse<-x$getinverse()
  if(!is.null(inverse)){
    message("getting cached inverse")
    return(inverse)
  }
  matrix<-x$get()
  inverse<-solve(x)
  x$setinverse(inverse)
  inverse
  
}



